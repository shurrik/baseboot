
package ${groupId}.${artifactId}.service;
import ${groupId}.common.service.IBaseService;
import ${groupId}.common.service.IPageService;
import ${groupId}.${artifactId}.dao.IRoleResourceDAO;
import ${groupId}.${artifactId}.model.RoleResource;
public interface IRoleResourceService extends IBaseService<IRoleResourceDAO,RoleResource>,IPageService<IRoleResourceDAO,RoleResource>{

}