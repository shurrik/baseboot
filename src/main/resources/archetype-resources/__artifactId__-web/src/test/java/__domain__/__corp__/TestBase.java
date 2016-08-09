package ${groupId};

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by shurrik on 2015/9/2.
 */
@ContextConfiguration(locations = { "classpath:spring/application-context.xml","classpath:spring/application-context-schedule.xml" })
//@ContextConfiguration(locations = { "classpath:spring/application-context.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public abstract class TestBase {

}
