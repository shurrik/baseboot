package ${groupId}.common.service;

/**
 * 数据权限接口   （业务相关接口  TODO 迁移到对应的特定业务场景common工程里）
 * <p/>
 * 创建时间: 14-8-16 下午10:20<br/>
 *
 * @author lp
 * @since v0.0.1
 */
public interface IDataPermService {
    /**
     * 拼装当前用户特定业务模型主体的数据权限sql
     * @param resUrl 资源url
     * @return
     */
    public String makeDataPermSql(String resUrl);
}
