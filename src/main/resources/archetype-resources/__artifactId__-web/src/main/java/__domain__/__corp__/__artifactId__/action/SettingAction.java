
package ${groupId}.${artifactId}.action;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ${groupId}.${artifactId}.utils.SysSetting;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ${groupId}.common.domain.view.BizData4Page;
import ${groupId}.${artifactId}.model.Setting;
import ${groupId}.${artifactId}.service.ISettingService;
import ${groupId}.common.utils.IdGenerator;
import ${groupId}.common.utils.JsonResult;
import ${groupId}.common.utils.PageParam;
import ${groupId}.common.utils.Constants;

@Controller
public class SettingAction extends AbstractAdminController<ISettingService>{

    @Autowired
    private ISettingService settingService;
    @Autowired
    private SysSetting sysSetting;
    
    @RequestMapping(value="/setting/list")
    public String list(Setting setting,ModelMap model,PageParam pageParam,HttpServletRequest request,HttpServletResponse response){

        //获取参数
    	Map<String, Object> conditions = getQueryMap(setting); 	
    	BizData4Page<Setting> pageCtx = doPage(model, conditions, pageParam);
    	model.addAttribute("setting", setting);
    	return "/module/setting/list";
    }    
    
    @RequestMapping(value="/setting/add")
    public String add(ModelMap model,HttpServletRequest request,HttpServletResponse response){

    	model.addAttribute("setting", new Setting());
        return "module/setting/edit";
    }    
    
    @RequestMapping(value="/setting/edit")
    public String edit(String id,ModelMap model,HttpServletRequest request,HttpServletResponse response){
    	
    	Setting setting = settingService.fetch(id);
    	model.addAttribute("setting", setting);
        return "module/setting/edit";
    }    
    
    @RequestMapping(value="/setting/save")
    @ResponseBody
    public String save(HttpServletRequest request,Setting setting){
		boolean isAddNew = StringUtils.isBlank(setting.getId())?true:false;
		if(isAddNew)
		{
			setting.setId(IdGenerator.createNewId());
			settingService.add(setting);
		}
		else
		{
			settingService.update(setting);
		}
        return JsonResult.operateSuccessClose(Constants.MAIN_TAB,"系统参数已修改,但未生效，请重载系统参数！").toString();
    }
    
    @RequestMapping(value="/setting/delete")
    @ResponseBody
    public String delete(String ids,HttpServletRequest request){
    	
    	settingService.deleteByIds(ids);
    	return JsonResult.DELETE_SUCCESS.toString();
    }

    @RequestMapping(value="/setting/reload")
    @ResponseBody
    public String reload(String ids,HttpServletRequest request){

        sysSetting.reload();
        return JsonResult.operateSuccess(Constants.MAIN_TAB).toString();
    }

    protected Map getQueryMap(Setting setting)
    {
        Map<String, Object> conditions = new HashMap();

        conditions.put("paramVal", setting.getParamVal());
        conditions.put("paramKey", setting.getParamKey());
        conditions.put("note", setting.getNote());
        conditions.put("createDate", setting.getCreateDate());
        conditions.put("updateDate", setting.getUpdateDate());
        return conditions;
    }

    @Override
    protected ISettingService getMainService() {
        return settingService;
    }

    @Override
    protected String getMainObjName() {
        return "setting";
    }

    @Override
    protected String getViewTitle() {
        return "setting";
    }
}
