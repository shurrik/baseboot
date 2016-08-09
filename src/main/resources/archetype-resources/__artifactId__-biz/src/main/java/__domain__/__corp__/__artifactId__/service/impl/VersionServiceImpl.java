
package ${groupId}.${artifactId}.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ${groupId}.common.service.impl.AbstractPageService;
import ${groupId}.${artifactId}.dao.IVersionDAO;
import ${groupId}.${artifactId}.model.Version;
import ${groupId}.${artifactId}.service.IVersionService;

@SuppressWarnings("unchecked")
@Service("VersionServiceImpl")

public class VersionServiceImpl extends AbstractPageService<IVersionDAO,Version> implements IVersionService {

	@Autowired
	private IVersionDAO versionDAO;
	@Override
	public boolean getEnableDataPerm() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public IVersionDAO getDao() {
		return versionDAO;
	}
}
