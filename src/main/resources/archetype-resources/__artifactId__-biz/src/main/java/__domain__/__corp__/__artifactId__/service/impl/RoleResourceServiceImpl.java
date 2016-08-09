
package ${groupId}.${artifactId}.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ${groupId}.common.service.impl.AbstractPageService;
import ${groupId}.${artifactId}.dao.IRoleResourceDAO;
import ${groupId}.${artifactId}.model.RoleResource;
import ${groupId}.${artifactId}.service.IRoleResourceService;

@SuppressWarnings("unchecked")
@Service("RoleResourceServiceImpl")

public class RoleResourceServiceImpl extends AbstractPageService<IRoleResourceDAO,RoleResource> implements IRoleResourceService {

	@Autowired
	private IRoleResourceDAO roleResourceDAO;
	@Override
	public boolean getEnableDataPerm() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public IRoleResourceDAO getDao() {
		return roleResourceDAO;
	}
}
