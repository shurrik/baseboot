
package ${groupId}.${artifactId}.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import ${groupId}.common.dao.IBaseDAO;
import ${groupId}.${artifactId}.model.Message;

public interface IMessageDAO extends IBaseDAO<Message>{

	public List<Message> findNewMsgs(@Param("toId") String toId);
	
	public void readAll(@Param("toId") String toId);
}

