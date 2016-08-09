
package ${groupId}.${artifactId}.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ${groupId}.common.service.impl.AbstractPageService;
import ${groupId}.${artifactId}.dao.IResourceDAO;
import ${groupId}.${artifactId}.model.Resource;
import ${groupId}.${artifactId}.service.IResourceService;

@SuppressWarnings("unchecked")
@Service("ResourceServiceImpl")

public class ResourceServiceImpl extends AbstractPageService<IResourceDAO,Resource> implements IResourceService {

	@Autowired
	private IResourceDAO resourceDAO;
	@Override
	public boolean getEnableDataPerm() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public IResourceDAO getDao() {
		return resourceDAO;
	}
	
	@Override
	public List<Resource> findMenuByUserIdAndPid(String userId, String pid) {
		// TODO Auto-generated method stub
		return resourceDAO.findMenuByUserIdAndPid(userId, pid);
	}
}
