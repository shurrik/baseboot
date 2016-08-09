
package ${groupId}.${artifactId}.service;
import ${groupId}.common.service.IBaseService;
import ${groupId}.common.service.IPageService;
import ${groupId}.${artifactId}.dao.IUserMsgCountDAO;
import ${groupId}.${artifactId}.model.User;
import ${groupId}.${artifactId}.model.UserMsgCount;
public interface IUserMsgCountService extends IBaseService<IUserMsgCountDAO,UserMsgCount>,IPageService<IUserMsgCountDAO,UserMsgCount>{

	public void createNew(User user);
	
	public void increaseUserUnreadForIncCount(String userId, Integer incCount);
	
	public void descreaseUserUnreadForDesCount(String userId, Integer desCount);
	
	public void incUserUnread(String userId);
	
	public void desUserUnread(String userId);
	
	public void clear(String userId);
}