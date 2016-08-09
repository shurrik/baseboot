
package ${groupId}.${artifactId}.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ${groupId}.${artifactId}.model.Message;
import ${groupId}.${artifactId}.model.User;
import ${groupId}.${artifactId}.service.IMessageService;
import ${groupId}.common.domain.view.BizData4Page;
import ${groupId}.common.utils.Constants;
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
public class MessageAction extends AbstractAdminController<IMessageService>{

    @Autowired
    private IMessageService messageService;
    
    @RequestMapping(value="/message/mymsg")
    public String mymsg(Message message, ModelMap model, PageParam pageParam, HttpServletRequest request, HttpServletResponse response){

    	User user = getCurrentUser();
    	message.setToId(user.getId());
        //获取参数
		Map<String, Object> conditions = getQueryMap(message); 	
    	BizData4Page<Message> pageCtx = doPage(model, conditions, pageParam);
    	model.addAttribute("message", message);
    	return "/module/message/mymsg";
    }    
    
    @RequestMapping(value="/message/list")
    public String list(Message message,ModelMap model,PageParam pageParam,HttpServletRequest request,HttpServletResponse response){

        //获取参数
		Map<String, Object> conditions = getQueryMap(message); 	
    	BizData4Page<Message> pageCtx = doPage(model, conditions, pageParam);
    	model.addAttribute("message", message);
    	return "/module/message/list";
    }    
    @RequestMapping(value="/message/digloglist")
    public String digloglist(Message message,ModelMap model,PageParam pageParam,HttpServletRequest request,HttpServletResponse response){

    	User user =getCurrentUser();
    	String toName = user.getUserName();
    	List<Message> messages = messageService.findMessagesByToName(toName);
    	model.addAttribute("messages", messages);
        return "module/message/digloglist";
    }   
    @RequestMapping(value="/message/add")
    public String add(ModelMap model,HttpServletRequest request,HttpServletResponse response){

    	model.addAttribute("message", new Message());
        return "module/message/edit";
    }    
    
    @RequestMapping(value="/message/edit")
    public String edit(String id,ModelMap model,HttpServletRequest request,HttpServletResponse response){
    	
    	Message message = messageService.fetch(id);
    	model.addAttribute("message", message);
        return "module/message/edit";
    }    
    
    @RequestMapping(value="/message/save")
    @ResponseBody
    public String save(HttpServletRequest request,Message message){
		boolean isAddNew = StringUtils.isBlank(message.getId())?true:false;
		if(isAddNew)
		{
			message.setId(IdGenerator.createNewId());
			messageService.add(message);
		}
		else
		{
			messageService.update(message);
		}
		return JsonResult.saveSuccessClose(Constants.MAIN_TAB).toString();
    }    
    
    @RequestMapping(value="/message/delete")
    @ResponseBody
    public String delete(String ids,HttpServletRequest request){
    	
    	messageService.deleteByIds(ids);
    	return JsonResult.DELETE_SUCCESS.toString();
    }       
    
    @RequestMapping(value="/message/route")
    public String route(String id,ModelMap model,HttpServletRequest request,HttpServletResponse response){

    	Message msg = messageService.fetch(id);
    	messageService.readMsg(id);
    	
    	if(StringUtils.isNotBlank(msg.getUrl()))
    	{
            return "redirect:/"+msg.getUrl();
    	}
    	return "";
    }    
	
    protected Map getQueryMap(Message message)
    {
    	Map<String, Object> conditions = new HashMap();
    	
		conditions.put("fromId", message.getFromId());		
		conditions.put("fromName", message.getFromName());		
		conditions.put("toId", message.getToId());		
		conditions.put("toName", message.getToName());		
		conditions.put("title", message.getTitle());		
		conditions.put("content", message.getContent());		
		conditions.put("readFlag", message.getReadFlag());		
		conditions.put("createDate", message.getCreateDate());		
		conditions.put("updateDate", message.getUpdateDate());		
    	return conditions;
    }

    @Override
    protected IMessageService getMainService() {
        return messageService;
    }

    @Override
    protected String getMainObjName() {
        return "message";
    }

    @Override
    protected String getViewTitle() {
        return "message";
    }
}
