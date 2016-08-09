package ${groupId}.${artifactId}.model;
import ${groupId}.common.domain.BaseDomain;
import java.util.Date;

public class UserMsgCount extends BaseDomain{
	private String userId; //用户ID
	private Integer unread; //新消息数
	private Date createDate; //创建日期
	private Date updateDate; //更新日期

	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Integer getUnread() {
		return unread;
	}
	public void setUnread(Integer unread) {
		this.unread = unread;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	
}
