/*
 * Copyright (c) 2013-2014, thinkjoy Inc. All Rights Reserved.
 *
 * Project Name: tecc-cn.thinkjoy.common
 * $Id: CreateBaseDomain.java 2014年4月14日 下午10:40:25 $
 */
package ${groupId}.common.domain;

import java.util.Date;

/**
 * 具有操作员操作属性的domain
 * <p/>
 * 创建时间: 2014年4月14日 下午10:40:25 <br/>
 *
 * @author lp
 * @version
 * @since v0.0.1
 */
public class CreateBaseDomain extends BaseDomain {
    /** 创建人及创建时间 */
    private long              creator;
    private long              createDate;

    /** 最后修改人及最后修改时间 */
    private long              lastModifier;
    private long              lastModDate;

    public long getCreator() {
        return creator;
    }

    public void setCreator(long creator) {
        this.creator = creator;
    }

    public long getCreateDate() {
        return createDate;
    }

    public void setCreateDate(long createDate) {
        this.createDate = createDate;
    }

    public long getLastModifier() {
        return lastModifier;
    }

    public void setLastModifier(long lastModifier) {
        this.lastModifier = lastModifier;
    }

    public long getLastModDate() {
        return lastModDate;
    }

    public void setLastModDate(long lastModDate) {
        this.lastModDate = lastModDate;
    }

    public Date getCreateDateAsDate() {
        return createDate > 0 ? new Date(createDate) : null;
    }

    public Date getLastModDateAsDate() {
        return lastModDate > 0 ? new Date(lastModDate) : null;
    }
}
