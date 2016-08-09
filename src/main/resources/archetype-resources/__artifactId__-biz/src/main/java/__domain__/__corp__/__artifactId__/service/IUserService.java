
package ${groupId}.${artifactId}.service;
import ${groupId}.common.service.IBaseService;
import ${groupId}.common.service.IPageService;
import ${groupId}.${artifactId}.dao.IUserDAO;
import ${groupId}.${artifactId}.model.User;

public interface IUserService extends IBaseService<IUserDAO,User>,IPageService<IUserDAO,User>{

	
	public User createNew(User user);
	public void incMsgUnread(User user);//增加用户未读消息数
	public void decMsgUnread(User user);//减少用户未读消息数
}