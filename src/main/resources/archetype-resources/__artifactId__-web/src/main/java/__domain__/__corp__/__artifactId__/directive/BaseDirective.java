package ${groupId}.${artifactId}.directive;

import java.io.IOException;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import ${groupId}.${artifactId}.model.User;
import ${groupId}.${artifactId}.service.IUserService;

import freemarker.core.Environment;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

public abstract class BaseDirective implements TemplateDirectiveModel {
	protected String limitStr = "limit";
	private static final Logger log = LoggerFactory
			.getLogger(BaseDirective.class);

	@Autowired
	private IUserService userService;
	
	/**
	 * @param params
	 * @param string
	 * @return 返回整数参数
	 */
	protected int getIntPara(Map<?, ?> params, String str) {
		int limit = 0;
		try {
			String value = getStrPara(params, str);
			if (value == null || value.equals("") || value.equals("null")) {
				return 0;
			}
			limit = Integer.parseInt(value);
		} catch (Exception e) {
			e.printStackTrace();
			limit = 0;
		}
		return limit;
	}

	/**
	 * @param params
	 * @param string
	 * @return 返回字符串参数
	 */
	protected String getStrPara(Map<?, ?> params, String str) {
		return params.get(str) == null ? null : params.get(str).toString();
	}

	/**
	 * @param params
	 * @param string
	 * @return 返回字符串参数
	 */
	protected boolean getBooleanPara(Map<?, ?> params, String str) {
		return params.get(str) != null && params.get(str).toString().equals("true") ? true
				: false;
	}

	@Override
	public void execute(Environment env, Map params, TemplateModel[] loopVars,
			TemplateDirectiveBody body) throws TemplateException, IOException {
		long beginTime = System.currentTimeMillis();

		Map<String, TemplateModel> paramsWrap = putRes(env, params, loopVars,
				body);
		Map<String, TemplateModel> origMap = DirectiveUtils
				.addParamsToVariable(env, paramsWrap);
		body.render(env.getOut());
		DirectiveUtils.removeParamsFromVariable(env, paramsWrap, origMap);
		long endTime = System.currentTimeMillis();
		log.debug(this.getClass().getName() + ":共耗时"
				+ String.valueOf(endTime - beginTime) + "微秒");
	}

	protected Map<String, TemplateModel> putRes(Environment env, Map params,
			TemplateModel[] loopVars, TemplateDirectiveBody body)
			throws TemplateModelException, IOException, TemplateException {
		return null;
	}

    public User getCurrentUser()
    {
    	
		Object userDetails = SecurityContextHolder.getContext()
				.getAuthentication().getPrincipal();
		String userName="";
		if( userDetails instanceof String){
			userName = (String)userDetails;
		}else if(userDetails instanceof UserDetails){
			userName = ((UserDetails)userDetails).getUsername();
		}
		User user = userService.findOne("userName", userName);
    	return user;
    }
}
