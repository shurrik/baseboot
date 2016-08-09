package ${groupId}.${artifactId}.schedule;

import org.springframework.stereotype.Service;

@Service
public class TestTask extends BaseTask{

	
	public void execute() throws Exception {
		logInfo("test任务开始");
		logInfo("test任务结束");
	}
}
