package ${groupId}.${artifactId}.exception;

import freemarker.template.TemplateModelException;

/**
 * 非布尔参数异常
 * 
 * @author lip
 * 
 */
@SuppressWarnings("serial")
public class MustDateException extends TemplateModelException {
	public MustDateException(String paramName) {
		super("The \"" + paramName + "\" parameter must be a date.");
	}
}
