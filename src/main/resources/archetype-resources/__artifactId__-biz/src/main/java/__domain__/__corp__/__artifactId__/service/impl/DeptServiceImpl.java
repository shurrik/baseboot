
package ${groupId}.${artifactId}.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ${groupId}.common.service.impl.AbstractPageService;
import ${groupId}.${artifactId}.dao.IDeptDAO;
import ${groupId}.${artifactId}.model.Dept;
import ${groupId}.${artifactId}.service.IDeptService;

@SuppressWarnings("unchecked")
@Service("DeptServiceImpl")

public class DeptServiceImpl extends AbstractPageService<IDeptDAO,Dept> implements IDeptService {

	@Autowired
	private IDeptDAO deptDAO;
	@Override
	public boolean getEnableDataPerm() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public IDeptDAO getDao() {
		return deptDAO;
	}
}
