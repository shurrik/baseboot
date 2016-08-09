package ${groupId}.common.service;

import ${groupId}.common.domain.view.BizData4Page;
import ${groupId}.common.dao.IBaseDAO;
import ${groupId}.common.domain.BaseDomain;

import java.util.Map;

/**
 * 进行分页数据查询的service
 * <p/>
 * 创建时间: 14-9-3 下午9:57<br/>
 *
 * @author lp
 * @since v0.0.1
 */
//public interface IPageService<T> {
public interface IPageService<D extends IBaseDAO,T extends BaseDomain> {
    /**
     * 数据权限后的分页数据获取
     * @param resUri
     * @param conditions
     * @param offset
     * @param rows
     * @return
     */
    public BizData4Page queryPageByDataPerm(String resUri, Map<String, Object> conditions, int curPage, int offset, int rows);
    
    public BizData4Page queryPage(Map<String, Object> conditions, int curPage, int offset, int rows);
}
