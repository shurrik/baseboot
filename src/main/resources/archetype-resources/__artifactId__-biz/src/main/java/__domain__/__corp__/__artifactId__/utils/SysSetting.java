package ${groupId}.${artifactId}.utils;

import ${groupId}.${artifactId}.model.Setting;
import ${groupId}.${artifactId}.service.ISettingService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by lip on 2016-01-21.
 */
@Component
public class SysSetting implements ApplicationListener<ContextRefreshedEvent> {

    private final static Logger logger = LoggerFactory.getLogger(SysSetting.class);

    @Autowired
    private ISettingService settingService;

    private static  Map<String,String> map;

    public void reload(){
        loadMap();
    }

    private void loadMap(){
        logger.info("=========初始化系统参数开始========");
        map = new HashMap<String, String>();
        List<Setting> settings = settingService.findAll();
        for(Setting setting:settings)
        {
            map.put(setting.getParamKey(),setting.getParamVal());
        }
        logger.info("=========初始化系统参数完毕========");
    }

    public static String getValue(String key)
    {
        return map.get(key);
    }

    @Override
    public void onApplicationEvent(ContextRefreshedEvent contextRefreshedEvent) {
        loadMap();
    }
}
