package ${groupId}.${artifactId}.security;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("XaSecurityMetadataSourceService")
@Transactional(readOnly = true)
public class XaSecurityMetadataSourceService implements
FilterInvocationSecurityMetadataSource{
	private static Map<String, Collection<ConfigAttribute>> roleMap = null;

	public void loadResourceDefine() {

		if (roleMap == null) {
			roleMap = new LinkedHashMap<String, Collection<ConfigAttribute>>();
		}
	}
	@Override
	public Collection<ConfigAttribute> getAttributes(Object object)
			throws IllegalArgumentException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Collection<ConfigAttribute> getAllConfigAttributes() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return true;
	}

}
