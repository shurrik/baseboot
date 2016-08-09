
package ${groupId}.${artifactId}.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ${groupId}.common.service.impl.AbstractPageService;
import ${groupId}.${artifactId}.dao.IUserRoleDAO;
import ${groupId}.${artifactId}.model.UserRole;
import ${groupId}.${artifactId}.service.IUserRoleService;

@SuppressWarnings("unchecked")
@Service("UserRoleServiceImpl")

public class UserRoleServiceImpl extends AbstractPageService<IUserRoleDAO,UserRole> implements IUserRoleService {

	@Autowired
	private IUserRoleDAO userRoleDAO;
	@Override
	public boolean getEnableDataPerm() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public IUserRoleDAO getDao() {
		return userRoleDAO;
	}
}
