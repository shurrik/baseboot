
package ${groupId}.${artifactId}.service;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import ${groupId}.common.service.IBaseService;
import ${groupId}.common.service.IPageService;
import ${groupId}.${artifactId}.dao.IResourceDAO;
import ${groupId}.${artifactId}.model.Resource;
public interface IResourceService extends IBaseService<IResourceDAO,Resource>,IPageService<IResourceDAO,Resource>{

	public List<Resource> findMenuByUserIdAndPid(@Param("userId") String userId, @Param("pid") String pid);
}