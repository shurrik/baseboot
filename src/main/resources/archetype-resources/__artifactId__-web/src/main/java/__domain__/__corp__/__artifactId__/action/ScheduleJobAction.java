package ${groupId}.${artifactId}.action;

import ${groupId}.${artifactId}.model.ScheduleJob;
import ${groupId}.${artifactId}.sys.SpringBeanUtils;
import ${groupId}.common.utils.Constants;
import ${groupId}.common.utils.JsonResult;
import org.apache.commons.lang.StringUtils;
import org.quartz.*;
import org.quartz.impl.matchers.GroupMatcher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.quartz.SchedulerFactoryBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * Created by DXH on 2016/6/15.
 */
@Controller
public class ScheduleJobAction extends BaseAction{

    @Autowired
    private SpringBeanUtils springBeanUtils;

    //获取计划任务
    @RequestMapping(value="/schedulejob/list")
    private String getScheduleJobs(ModelMap model) throws SchedulerException {
        SchedulerFactoryBean schedulerFactoryBean = (SchedulerFactoryBean) springBeanUtils.getBeanByClass(org.springframework.scheduling.quartz.SchedulerFactoryBean.class);

        Scheduler scheduler = schedulerFactoryBean.getScheduler();
        GroupMatcher<JobKey> matcher = GroupMatcher.anyJobGroup();
        Set<JobKey> jobKeys = scheduler.getJobKeys(matcher);
        List<ScheduleJob> jobList = new ArrayList<ScheduleJob>();
        for (JobKey jobKey : jobKeys) {
            List<? extends Trigger> triggers = scheduler.getTriggersOfJob(jobKey);
            for (Trigger trigger : triggers) {
                ScheduleJob job = new ScheduleJob();
                job.setJobName(jobKey.getName());
                job.setJobGroup(jobKey.getGroup());
                job.setDesc("触发器:" + trigger.getKey());
                Trigger.TriggerState triggerState = scheduler.getTriggerState(trigger.getKey());
                job.setJobStatus(triggerState.name());
                if (trigger instanceof CronTrigger) {
                    CronTrigger cronTrigger = (CronTrigger) trigger;
                    String cronExpression = cronTrigger.getCronExpression();
                    job.setCronExpression(cronExpression);
                    job.setStartTime(cronTrigger.getStartTime());
                    job.setEndTime(cronTrigger.getEndTime());
                    job.setNextTime(cronTrigger.getNextFireTime());
                    job.setJobKey(jobKey.toString());
                }
                if(StringUtils.isNotBlank(job.getCronExpression()))
                {
                    jobList.add(job);
                }
                model.addAttribute("jobList",jobList);
            }
        }
        return "/module/schedulejob/list";
    }
    //暂停任务
    @RequestMapping(value="/schedulejob/pausejob")
    @ResponseBody
    private String PauseJob(String key) throws SchedulerException {
        JobKey jobKey = JobKey.jobKey(key);
        SchedulerFactoryBean schedulerFactoryBean = (SchedulerFactoryBean) springBeanUtils.getBeanByClass(org.springframework.scheduling.quartz.SchedulerFactoryBean.class);
        Scheduler scheduler = schedulerFactoryBean.getScheduler();
        scheduler.pauseJob(jobKey);
        return JsonResult.operateSuccess(Constants.MAIN_TAB).toString();
    }
    //恢复任务
    @RequestMapping(value="/schedulejob/resumejob")
    @ResponseBody
    private String resumeJob(String key) throws SchedulerException {
        JobKey jobKey = JobKey.jobKey(key);
        SchedulerFactoryBean schedulerFactoryBean = (SchedulerFactoryBean) springBeanUtils.getBeanByClass(org.springframework.scheduling.quartz.SchedulerFactoryBean.class);
        Scheduler scheduler = schedulerFactoryBean.getScheduler();
        scheduler.resumeJob(jobKey);
        return JsonResult.operateSuccess(Constants.MAIN_TAB).toString();
    }
    //立即执行一次
    @RequestMapping(value="/schedulejob/triggerjob")
    @ResponseBody
    private String triggerJob(String key) throws SchedulerException {
        JobKey jobKey = JobKey.jobKey(key);
        SchedulerFactoryBean schedulerFactoryBean = (SchedulerFactoryBean) springBeanUtils.getBeanByClass(org.springframework.scheduling.quartz.SchedulerFactoryBean.class);
        Scheduler scheduler = schedulerFactoryBean.getScheduler();
        scheduler.triggerJob(jobKey);
        return JsonResult.operateSuccess(Constants.MAIN_TAB).toString();
    }
}
