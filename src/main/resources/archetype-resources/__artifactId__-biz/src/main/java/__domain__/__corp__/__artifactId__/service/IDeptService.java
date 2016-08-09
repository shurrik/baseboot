
package ${groupId}.${artifactId}.service;
import ${groupId}.common.service.IBaseService;
import ${groupId}.common.service.IPageService;
import ${groupId}.${artifactId}.dao.IDeptDAO;
import ${groupId}.${artifactId}.model.Dept;
public interface IDeptService extends IBaseService<IDeptDAO,Dept>,IPageService<IDeptDAO,Dept>{

}