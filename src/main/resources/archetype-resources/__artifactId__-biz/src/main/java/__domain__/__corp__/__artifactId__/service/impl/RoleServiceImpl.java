
package ${groupId}.${artifactId}.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ${groupId}.common.service.impl.AbstractPageService;
import ${groupId}.${artifactId}.dao.IRoleDAO;
import ${groupId}.${artifactId}.model.Role;
import ${groupId}.${artifactId}.service.IRoleService;

@SuppressWarnings("unchecked")
@Service("RoleServiceImpl")

public class RoleServiceImpl extends AbstractPageService<IRoleDAO,Role> implements IRoleService {

	@Autowired
	private IRoleDAO roleDAO;
	@Override
	public boolean getEnableDataPerm() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public IRoleDAO getDao() {
		return roleDAO;
	}
}
