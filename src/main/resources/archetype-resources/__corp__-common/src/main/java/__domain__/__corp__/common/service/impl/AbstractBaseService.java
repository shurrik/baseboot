package ${groupId}.common.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import ${groupId}.common.service.IBaseService;
import ${groupId}.common.utils.CharacterCaseUtils;
import ${groupId}.common.utils.IdGenerator;
import org.apache.ibatis.annotations.Param;
import org.springframework.util.StringUtils;

import ${groupId}.common.dao.IBaseDAO;
import ${groupId}.common.domain.BaseDomain;
import ${groupId}.common.service.IDaoAware;

/**
 * 服务抽象类
 * <p/>
 * 创建时间: 14-9-22 下午5:51<br/>
 *
 * @author lp
 * @since v0.0.1
 */
public abstract class AbstractBaseService<D extends IBaseDAO,T extends BaseDomain> implements IBaseService<D,T>, IDaoAware<D,T>{
    @Override
    public T add(T entity) {
        if(StringUtils.isEmpty(entity.getId()))
        {
            entity.setId(IdGenerator.createNewId());
        }
        getDao().insert(entity);
        return entity;
    }

    @Override
    public void edit(T entity) {
        getDao().update(entity);
    }

    @Override
    public void delete(String id) {
        getDao().deleteById(id);
    }

    @Override
    public T view(String id) {
        return (T)getDao().fetch(id);
    }

    @Override
    public void insert(T entity) {
        getDao().insert(entity);
    }

    @Override
    public void update(T entity) {
        getDao().update(entity);
    }

    @Override
    public void updateNull(T entity) {
        getDao().updateNull(entity);
    }

    @Override
    public void deleteById(String id) {

        getDao().deleteById(id);
    }

    @Override
    public void deleteByIds(String ids) {

        String[] idArr = ids.split(",");
        for(String id:idArr)
        {
        	getDao().deleteById(id);
        }
    }
    
    @Override
    public List<T> findByIds(String ids){    	

        List<T> list = new ArrayList();
    	String[] idArr = ids.split(",");
        for(String id:idArr)
        {
        	T t =  (T) getDao().fetch(id);
        	list.add(t);
        }
        return list;
    }    

    @Override
    public void deleteByProperty(@Param("property") String property, @Param("value") Object value) {
    	property = CharacterCaseUtils.toUnderlineCase(property);
        getDao().deleteByProperty(property,value);
    }

    @Override
    public T fetch(String id) {
        return (T)getDao().fetch(id);
    }

    @Override
    public T findOne(@Param("property") String property, @Param("value") Object value) {
    	property = CharacterCaseUtils.toUnderlineCase(property);
        return (T)getDao().findOne(property,value);
    }

    @Override
    public List findList(@Param("property") String property, @Param("value") Object value) {
    	property = CharacterCaseUtils.toUnderlineCase(property);
        return getDao().findList(property,value);
    }

    @Override
    public List findAll() {
       return getDao().findAll();
    }

    @Override
    public List like(String property, Object value) {
        return getDao().like(property,value);
    }

    @Override
    public void updateOrSave(T entity, String id) {
        if(id!=null&&!StringUtils.isEmpty(id))
        {
           getDao().update(entity);
        }
        else
        {
           getDao().insert(entity);
        }
    }

    @Override
    public T selectOne(String mapperId, Object obj) {
        return (T)getDao().selectOne(mapperId,obj);
    }

    @Override
    public List selectList(String mapperId, Object obj) {
        return getDao().selectList(mapperId,obj);
    }

    @Override
    public int count(Map condition) {
       return getDao().count(condition);
    }

    @Override
    public T queryOne(@Param("map") Map condition) {
        return (T)getDao().queryOne(condition);
    }

    @Override
    public List queryList(@Param("map") Map condition, @Param("orderBy") String orderBy, @Param("sortBy") String sortBy) {

    	return getDao().queryList(condition,orderBy,sortBy);
    }

    @Override
    public void deleteByCondition(Map condition) {
        getDao().deleteByCondition(condition);
    }

    @Override
    public void updateMap(@Param("map") Map entityMap) {
        getDao().updateMap(entityMap);
    }

    @Override
    public void insertMap(@Param("map") Map entityMap) {
        getDao().insertMap(entityMap);
    }

    @Override
    public List listByPage(Map condition, int offset, int rows) {
        return getDao().queryPage(condition, offset, rows);
    }

}
