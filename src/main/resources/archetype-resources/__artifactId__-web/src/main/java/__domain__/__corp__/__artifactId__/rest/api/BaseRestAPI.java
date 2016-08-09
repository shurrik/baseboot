package ${groupId}.${artifactId}.rest.api;

import ${groupId}.common.domain.view.BizData4Page;
import ${groupId}.common.service.IPageService;
import ${groupId}.common.utils.Constants;
import ${groupId}.common.utils.PageParam;
import org.apache.commons.lang.StringUtils;

import java.util.Map;

/**
 * @author lp 创建于 2015年7月29日
 */
public abstract class BaseRestAPI<T extends IPageService> {


    /** 当前页面的主service  */
    protected T mainService;
/*    @Autowired
    protected ResourceGridService resourceGridService;*/
    /** 当前页面的主业务模型  */
    protected String mainObjName;
    /** 当前页面的标题  */
    protected String viewTitle;

/*    @Autowired
    private UserDAO userdao;*/

    /**
     * 供子类注入主service
     * @return
     */
    protected abstract T getMainService();

    protected BizData4Page doPage(Map<String, Object> conditions,PageParam pageParam){

        if(pageParam.getPageCurrent() == null) {
            pageParam.setPageCurrent(1);
        }
        Integer page = pageParam.getPageCurrent();

        if(pageParam.getPageSize() == null) {
            pageParam.setPageSize(Constants.MAX_PAGE_SIZE);
        }
        Integer rows = pageParam.getPageSize();

        String sidx = pageParam.getOrderField();
        String sord = pageParam.getOrderDirection();
        if(StringUtils.isNotBlank(sidx)&&StringUtils.isNotBlank(sord))
        {
            conditions.put("sort", sidx + " " + sord);
        }
        else
        {
            conditions.put("sort", "createDate desc");
        }

        BizData4Page pageCtx = getMainService().queryPage(conditions, page, (page-1)*rows, rows);

        return pageCtx;
    }



    public PageParam getPageParam(Map<String,Object> map)
    {
        PageParam pageParam = new PageParam();
        pageParam.setPageCurrent((Integer) map.get("pageCurrent"));
        pageParam.setPageSize((Integer) map.get("pageSize"));
        pageParam.setOrderDirection((String) map.get("orderDirection"));
        pageParam.setOrderField((String) map.get("orderField"));
        return pageParam;
    }
}
