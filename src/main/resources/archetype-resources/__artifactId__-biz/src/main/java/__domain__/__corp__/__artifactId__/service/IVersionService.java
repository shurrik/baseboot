
package ${groupId}.${artifactId}.service;
import ${groupId}.common.service.IBaseService;
import ${groupId}.common.service.IPageService;
import ${groupId}.${artifactId}.dao.IVersionDAO;
import ${groupId}.${artifactId}.model.Version;
public interface IVersionService extends IBaseService<IVersionDAO,Version>,IPageService<IVersionDAO,Version>{

}