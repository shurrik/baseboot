
package ${groupId}.${artifactId}.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import ${groupId}.common.dao.IBaseDAO;
import ${groupId}.${artifactId}.model.Resource;

public interface IResourceDAO extends IBaseDAO<Resource>{
	public List<Resource> findMenuByUserIdAndPid(@Param("userId") String userId, @Param("pid") String pid);
}
