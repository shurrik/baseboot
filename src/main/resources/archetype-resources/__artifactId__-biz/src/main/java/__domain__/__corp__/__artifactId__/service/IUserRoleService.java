
package ${groupId}.${artifactId}.service;
import ${groupId}.common.service.IBaseService;
import ${groupId}.common.service.IPageService;
import ${groupId}.${artifactId}.dao.IUserRoleDAO;
import ${groupId}.${artifactId}.model.UserRole;
public interface IUserRoleService extends IBaseService<IUserRoleDAO,UserRole>,IPageService<IUserRoleDAO,UserRole>{

}