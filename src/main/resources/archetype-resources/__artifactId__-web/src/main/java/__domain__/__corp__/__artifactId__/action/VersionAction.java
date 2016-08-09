
package ${groupId}.${artifactId}.action;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ${groupId}.common.domain.view.BizData4Page;
import ${groupId}.${artifactId}.model.Version;
import ${groupId}.${artifactId}.service.IVersionService;
import ${groupId}.common.utils.IdGenerator;
import ${groupId}.common.utils.JsonResult;
import ${groupId}.common.utils.PageParam;
import ${groupId}.common.utils.Constants;

@Controller
public class VersionAction extends AbstractAdminController<IVersionService>{

    @Autowired
    private IVersionService versionService;
    
    @RequestMapping(value="/version/list")
    public String list(Version version,ModelMap model,PageParam pageParam,HttpServletRequest request,HttpServletResponse response){

        //获取参数
    	Map<String, Object> conditions = getQueryMap(version); 	
    	BizData4Page<Version> pageCtx = doPage(model, conditions, pageParam);
    	model.addAttribute("version", version);
    	return "/module/version/list";
    }    
    
    @RequestMapping(value="/version/add")
    public String add(ModelMap model,HttpServletRequest request,HttpServletResponse response){

    	model.addAttribute("version", new Version());
        return "module/version/edit";
    }    
    
    @RequestMapping(value="/version/edit")
    public String edit(String id,ModelMap model,HttpServletRequest request,HttpServletResponse response){
    	
    	Version version = versionService.fetch(id);
    	model.addAttribute("version", version);
        return "module/version/edit";
    }    
    
    @RequestMapping(value="/version/save")
    @ResponseBody
    public String save(HttpServletRequest request,Version version){
		boolean isAddNew = StringUtils.isBlank(version.getId())?true:false;
		if(isAddNew)
		{
			version.setId(IdGenerator.createNewId());
			versionService.add(version);
		}
		else
		{
			versionService.update(version);
		}
        return JsonResult.saveSuccessClose(Constants.MAIN_TAB).toString();
    }    
    
    @RequestMapping(value="/version/delete")
    @ResponseBody
    public String delete(String ids,HttpServletRequest request){
    	
    	versionService.deleteByIds(ids);
    	return JsonResult.DELETE_SUCCESS.toString();
    }       
	
    protected Map getQueryMap(Version version)
    {
    	Map<String, Object> conditions = new HashMap();
    	
		conditions.put("sysName", version.getSysName());		
		conditions.put("sysVersion", version.getSysVersion());		
		conditions.put("buildDate", version.getBuildDate());		
		conditions.put("copyRight", version.getCopyRight());		
		conditions.put("createDate", version.getCreateDate());		
    	return conditions;
    }

    @Override
    protected IVersionService getMainService() {
        return versionService;
    }

    @Override
    protected String getMainObjName() {
        return "version";
    }

    @Override
    protected String getViewTitle() {
        return "version";
    }
}
