package ${groupId}.common.utils;

import java.util.UUID;

import org.codehaus.plexus.util.StringUtils;


public class IdGenerator {

	public static String createNewId()
	{
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
	
	public static String createNewIdByPid(String pid,Integer order)
	{
		String count = String.valueOf(1000+order);
		String no = count.substring(1,count.length());
		pid = StringUtils.isBlank(pid)?"":pid;
		return pid+no;
	}	
	
}
