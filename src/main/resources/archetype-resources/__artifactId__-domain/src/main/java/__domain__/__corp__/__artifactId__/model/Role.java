package ${groupId}.${artifactId}.model;
import ${groupId}.common.domain.BaseDomain;
import java.util.Date;

public class Role extends BaseDomain{
	private String name; //角色名称
	private String summary; //介绍
	private Date createDate; //创建日期
	private Date updateDate; //更新日期

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
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
