
package ${groupId}.${artifactId}.service;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import ${groupId}.common.service.IBaseService;
import ${groupId}.common.service.IPageService;
import ${groupId}.${artifactId}.dao.IMessageDAO;
import ${groupId}.${artifactId}.model.Message;
import ${groupId}.${artifactId}.model.User;
public interface IMessageService extends IBaseService<IMessageDAO,Message>,IPageService<IMessageDAO,Message>{

	public void createMsg(User from, User to, String title, String content);
	public void createSysMsg(User to, String title, String content);
	public void createSysMsg(User to, String title, String content, String url);
	public void readMsg(String id);
	
	public List<Message> findNewMsgs(String toId);
	
	public List<Message> findMessagesByToName(String toName);
	
	public List<Message> findUnreadMsgs(String toId);
	
	public void readAll(String toId);

}