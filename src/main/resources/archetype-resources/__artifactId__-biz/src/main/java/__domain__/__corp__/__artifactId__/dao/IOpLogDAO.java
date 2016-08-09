
package ${groupId}.${artifactId}.dao;

import ${groupId}.common.dao.IBaseDAO;
import ${groupId}.${artifactId}.model.OpLog;

public interface IOpLogDAO extends IBaseDAO<OpLog>{

	Object addop(OpLog oplog);

}
