
package ${groupId}.${artifactId}.service;
import ${groupId}.common.service.IBaseService;
import ${groupId}.common.service.IPageService;
import ${groupId}.${artifactId}.dao.IOpLogDAO;
import ${groupId}.${artifactId}.model.OpLog;
import ${groupId}.${artifactId}.model.User;
public interface IOpLogService extends IBaseService<IOpLogDAO,OpLog>,IPageService<IOpLogDAO,OpLog>{


	public	void createNew(String title, String content, User user);
}