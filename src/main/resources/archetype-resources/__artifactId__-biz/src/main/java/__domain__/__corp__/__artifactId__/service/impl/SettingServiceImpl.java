
package ${groupId}.${artifactId}.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ${groupId}.common.service.impl.AbstractPageService;
import ${groupId}.${artifactId}.dao.ISettingDAO;
import ${groupId}.${artifactId}.model.Setting;
import ${groupId}.${artifactId}.service.ISettingService;

@SuppressWarnings("unchecked")
@Service("SettingServiceImpl")

public class SettingServiceImpl extends AbstractPageService<ISettingDAO,Setting> implements ISettingService {

	@Autowired
	private ISettingDAO settingDAO;
	@Override
	public boolean getEnableDataPerm() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public ISettingDAO getDao() {
		return settingDAO;
	}
}
