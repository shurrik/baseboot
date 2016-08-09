package ${groupId}.common.service.impl;

import ${groupId}.common.domain.view.BizData4Page;
import ${groupId}.common.service.IDataPermAware;
import ${groupId}.common.dao.IBaseDAO;
import ${groupId}.common.domain.BaseDomain;
import ${groupId}.common.service.IPageService;

import java.util.List;
import java.util.Map;

/**
 * 分页处理的抽象实现，继承自baseService，具备业务模型的基本业务逻辑处理
 * <p/>
 * 创建时间: 14-9-3 下午10:21<br/>
 *
 * @author lp
 * @since v0.0.1
 */
public abstract class AbstractPageService<D extends IBaseDAO,T extends BaseDomain> extends AbstractBaseService<D,T> implements IPageService<D,T>, IDataPermAware {

    @Override
    public BizData4Page queryPageByDataPerm(String resUri, Map<String, Object> conditions, int curPage, int offset, int rows) {


        List<T> mainData = getDao().queryPage(conditions, offset, rows);
        int records =  getDao().count(conditions);

        BizData4Page bizData4Page = new BizData4Page();
        bizData4Page.setRows(mainData);
        bizData4Page.setPage(curPage);
        bizData4Page.setRecords(records);

        int total = records / rows;
        int mod = records % rows;
        if(mod > 0){
            total = total + 1;
        }
        bizData4Page.setTotal(total);

        return bizData4Page;
    }
    
    @Override
    public BizData4Page queryPage(Map<String, Object> conditions, int curPage, int offset, int rows) {

        List<T> mainData = getDao().queryPage(conditions, offset, rows);
        int records =  getDao().count(conditions);
        BizData4Page bizData4Page = new BizData4Page();
        bizData4Page.setRows(mainData);
        bizData4Page.setPage(curPage);
        bizData4Page.setRecords(records);

        int total = records / rows;
        int mod = records % rows;
        if(mod > 0){
            total = total + 1;
        }
        bizData4Page.setTotal(total);

        return bizData4Page;
    }
}
