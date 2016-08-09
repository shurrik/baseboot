
package ${groupId}.${artifactId}.service;
import ${groupId}.common.service.IBaseService;
import ${groupId}.common.service.IPageService;
import ${groupId}.${artifactId}.dao.ISettingDAO;
import ${groupId}.${artifactId}.model.Setting;
public interface ISettingService extends IBaseService<ISettingDAO,Setting>,IPageService<ISettingDAO,Setting>{

}