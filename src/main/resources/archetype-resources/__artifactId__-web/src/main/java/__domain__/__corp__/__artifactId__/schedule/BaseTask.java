package ${groupId}.${artifactId}.schedule;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class BaseTask {
	private static final Logger log = LoggerFactory.getLogger(BaseTask.class);
	public void logInfo(String info)
	{
		StringBuffer buffer = new StringBuffer();
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String now = df.format(new Date());
		buffer.append("==========");
		buffer.append(now);
		buffer.append(":");
		buffer.append(info);
		buffer.append("==========");
		log.info(buffer.toString());
	}

}
