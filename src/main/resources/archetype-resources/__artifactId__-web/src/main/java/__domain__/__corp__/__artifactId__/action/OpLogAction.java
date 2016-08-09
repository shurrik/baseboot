
package ${groupId}.${artifactId}.action;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ${groupId}.${artifactId}.model.OpLog;
import ${groupId}.${artifactId}.service.IOpLogService;
import ${groupId}.common.domain.view.BizData4Page;
import ${groupId}.common.utils.IdGenerator;
import ${groupId}.common.utils.JsonResult;
import ${groupId}.common.utils.PageParam;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class OpLogAction extends AbstractAdminController<IOpLogService>{

    @Autowired
    private IOpLogService opLogService;
    
    @RequestMapping(value="/oplog/list")
    public String list(OpLog opLog, ModelMap model, PageParam pageParam, HttpServletRequest request, HttpServletResponse response){

        //获取参数
    	Map<String, Object> conditions = getQueryMap(opLog); 	
    	BizData4Page<OpLog> pageCtx = doPage(model, conditions, pageParam);
    	model.addAttribute("opLog", opLog);
    	return "/module/oplog/list";
    }    
    
    @RequestMapping(value="/oplog/add")
    public String add(ModelMap model,HttpServletRequest request,HttpServletResponse response){

    	model.addAttribute("opLog", new OpLog());
        return "module/oplog/edit";
    }    
    
    @RequestMapping(value="/oplog/edit")
    public String edit(String id,ModelMap model,HttpServletRequest request,HttpServletResponse response){
    	
    	OpLog opLog = opLogService.fetch(id);
    	model.addAttribute("opLog", opLog);
        return "module/oplog/edit";
    }    
    
    @RequestMapping(value="/oplog/save")
    @ResponseBody
    public String save(HttpServletRequest request,OpLog opLog){
		boolean isAddNew = StringUtils.isBlank(opLog.getId())?true:false;
		if(isAddNew)
		{
			opLog.setId(IdGenerator.createNewId());
			opLogService.add(opLog);
		}
		else
		{
			opLogService.update(opLog);
		}
    	return JsonResult.saveSuccessClose(getMainObjName()).toString();
    }    
    
    @RequestMapping(value="/oplog/delete")
    @ResponseBody
    public String delete(String ids,HttpServletRequest request){
    	
    	opLogService.deleteByIds(ids);
    	return JsonResult.DELETE_SUCCESS.toString();
    }       
	
    protected Map getQueryMap(OpLog opLog)
    {
    	Map<String, Object> conditions = new HashMap();
    	
		conditions.put("title", opLog.getTitle());		
		conditions.put("content", opLog.getContent());		
		conditions.put("userName", opLog.getUserName());		
		conditions.put("realName", opLog.getRealName());		
		conditions.put("createDate", opLog.getCreateDate());		
		conditions.put("updateDate", opLog.getUpdateDate());		
    	return conditions;
    }

    @Override
    protected IOpLogService getMainService() {
        return opLogService;
    }

    @Override
    protected String getMainObjName() {
        return "oplog";
    }

    @Override
    protected String getViewTitle() {
        return "oplog";
    }
}
