package ${groupId}.${artifactId}.rest;

import org.codehaus.jackson.jaxrs.JacksonJsonProvider;
import org.glassfish.jersey.jackson.JacksonFeature;
import org.glassfish.jersey.server.ResourceConfig;

/**
 * @author lp 创建于 2015年7月29日
 */
public class MainApp extends ResourceConfig {

	/**
	 * Entry point
	 */
	public MainApp() {
		super();
		packages("${groupId}.${artifactId}.rest");
		register(JacksonFeature.class);
		register(JacksonJsonProvider.class); 
	}

}
