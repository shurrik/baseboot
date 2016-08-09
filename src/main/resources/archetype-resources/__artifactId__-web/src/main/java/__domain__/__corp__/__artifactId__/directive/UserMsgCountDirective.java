package ${groupId}.${artifactId}.directive;

import static freemarker.template.ObjectWrapper.DEFAULT_WRAPPER;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ${groupId}.${artifactId}.model.Message;
import ${groupId}.${artifactId}.model.User;
import ${groupId}.${artifactId}.model.UserMsgCount;
import ${groupId}.${artifactId}.service.IMessageService;
import ${groupId}.${artifactId}.service.IUserMsgCountService;

import freemarker.core.Environment;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

@Service
public class UserMsgCountDirective extends BaseDirective{

	
	@Autowired
	private IUserMsgCountService userMsgCountService;
	@Autowired
	private IMessageService messageService;	
	
	@Override
	@SuppressWarnings("unchecked")
	protected Map<String, TemplateModel> putRes(Environment env, Map params,
			TemplateModel[] loopVars, TemplateDirectiveBody body)
			throws TemplateException {
		Map<String, TemplateModel> paramWrap = new HashMap<String, TemplateModel>(params);
		User user = getCurrentUser();
		UserMsgCount msgCount =  userMsgCountService.findOne("userId", user.getId());
		if(null!= msgCount&&msgCount.getUnread()>0)
		{
			List<Message> msgs = messageService.findNewMsgs(user.getId());
			paramWrap.put("msgs", DEFAULT_WRAPPER.wrap(msgs));
			paramWrap.put("unread", DEFAULT_WRAPPER.wrap(msgCount.getUnread()));
		}
		return paramWrap;
	}
}
