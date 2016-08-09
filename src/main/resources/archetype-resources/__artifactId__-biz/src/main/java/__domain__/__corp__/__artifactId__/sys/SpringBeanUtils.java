package ${groupId}.${artifactId}.sys;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.BeanFactoryAware;
import org.springframework.stereotype.Component;

@Component
public class SpringBeanUtils implements BeanFactoryAware {

    private static BeanFactory beanFactory;

    /** 
     * 注入BeanFactory实例 
     */ 
    @Override 
    public void setBeanFactory (BeanFactory beanFactory) throws BeansException { 
        SpringBeanUtils.beanFactory = beanFactory; 
    }

    /** 
     * 根据bean的名称获取相应类型的对象 
     * 
     * @param beanName 
     *            bean的名称 
     * @return Object类型的对象 
     */ 
    public static Object getBean (String beanName) { 
        return beanFactory.getBean(beanName); 
    }

    public static Object getBeanByClass (Class clazz) {
        return beanFactory.getBean(clazz);
    }


}
