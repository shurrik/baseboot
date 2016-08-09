package ${groupId}.${artifactId}.service.test;

import ${groupId}.TestBase;
import ${groupId}.${artifactId}.model.Resource;
import ${groupId}.${artifactId}.model.User;
import ${groupId}.${artifactId}.service.IResourceService;
import ${groupId}.${artifactId}.service.IUserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;


public class TestResourceService extends TestBase {

    @Autowired
    private IResourceService resourceService;

    @Test
    public void testFindAll()
    {
        List<Resource> list = resourceService.findAll();
        for(Resource res:list)
        {
            System.out.println(res.getName());
        }
    }
}
