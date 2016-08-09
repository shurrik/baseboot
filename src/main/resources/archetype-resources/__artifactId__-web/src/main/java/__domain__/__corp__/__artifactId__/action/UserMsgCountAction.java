
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
import ${groupId}.${artifactId}.model.User;
import ${groupId}.${artifactId}.model.UserMsgCount;
import ${groupId}.${artifactId}.service.IUserMsgCountService;
import ${groupId}.common.utils.Constants;
import ${groupId}.common.utils.IdGenerator;
import ${groupId}.common.utils.JsonResult;
import ${groupId}.common.utils.PageParam;

@Controller
public class UserMsgCountAction extends AbstractAdminController<IUserMsgCountService>{

    @Autowired
    private IUserMsgCountService userMsgCountService;
    
    @RequestMapping(value="/usermsgcount/list")
    public String list(UserMsgCount userMsgCount,ModelMap model,PageParam pageParam,HttpServletRequest request,HttpServletResponse response){

        //获取参数
    	Map<String, Object> conditions = getQueryMap(userMsgCount); 	
    	BizData4Page<UserMsgCount> pageCtx = doPage(model, conditions, pageParam);
    	model.addAttribute("userMsgCount", userMsgCount);
    	return "/module/usermsgcount/list";
    }    
    
    @RequestMapping(value="/usermsgcount/add")
    public String add(ModelMap model,HttpServletRequest request,HttpServletResponse response){

    	model.addAttribute("userMsgCount", new UserMsgCount());
        return "module/usermsgcount/edit";
    }    
    
    @RequestMapping(value="/usermsgcount/edit")
    public String edit(String id,ModelMap model,HttpServletRequest request,HttpServletResponse response){
    	
    	UserMsgCount userMsgCount = userMsgCountService.fetch(id);
    	model.addAttribute("userMsgCount", userMsgCount);
        return "module/usermsgcount/edit";
    }    
    
    @RequestMapping(value="/usermsgcount/save")
    @ResponseBody
    public String save(HttpServletRequest request,UserMsgCount userMsgCount){
		boolean isAddNew = StringUtils.isBlank(userMsgCount.getId())?true:false;
		if(isAddNew)
		{
			userMsgCount.setId(IdGenerator.createNewId());
			userMsgCountService.add(userMsgCount);
		}
		else
		{
			userMsgCountService.update(userMsgCount);
		}
		return JsonResult.saveSuccessClose(Constants.MAIN_TAB).toString();
    }    
    
    @RequestMapping(value="/usermsgcount/delete")
    @ResponseBody
    public String delete(String ids,HttpServletRequest request){
    	
    	userMsgCountService.deleteByIds(ids);
    	return JsonResult.DELETE_SUCCESS.toString();
    }
    
    @RequestMapping(value="/usermsgcount/unreadcount")
    @ResponseBody
    public String unreadCount(String ids,HttpServletRequest request){
    	
    	User user = getCurrentUser();
    	UserMsgCount umc = userMsgCountService.findOne("userId", user.getId());
    	return umc.getUnread().toString();
    } 
    
    @RequestMapping(value="/usermsgcount/clear")
    @ResponseBody
    public String clear(HttpServletRequest request){
    	
    	User user = getCurrentUser();
    	userMsgCountService.clear(user.getId());
    	return JsonResult.operateSuccess(Constants.MAIN_TAB).toString();
    }    
	
    protected Map getQueryMap(UserMsgCount userMsgCount)
    {
    	Map<String, Object> conditions = new HashMap();
    	
		conditions.put("userId", userMsgCount.getUserId());		
		conditions.put("unread", userMsgCount.getUnread());		
		conditions.put("createDate", userMsgCount.getCreateDate());		
		conditions.put("updateDate", userMsgCount.getUpdateDate());		
    	return conditions;
    }

    @Override
    protected IUserMsgCountService getMainService() {
        return userMsgCountService;
    }

    @Override
    protected String getMainObjName() {
        return "usermsgcount";
    }

    @Override
    protected String getViewTitle() {
        return "usermsgcount";
    }
}
