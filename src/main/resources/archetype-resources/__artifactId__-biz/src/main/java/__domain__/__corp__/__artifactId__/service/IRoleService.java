
package ${groupId}.${artifactId}.service;
import ${groupId}.common.service.IBaseService;
import ${groupId}.common.service.IPageService;
import ${groupId}.${artifactId}.dao.IRoleDAO;
import ${groupId}.${artifactId}.model.Role;
public interface IRoleService extends IBaseService<IRoleDAO,Role>,IPageService<IRoleDAO,Role>{

}