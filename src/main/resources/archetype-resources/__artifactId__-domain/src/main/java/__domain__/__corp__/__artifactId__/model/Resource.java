package ${groupId}.${artifactId}.model;
import ${groupId}.common.domain.BaseDomain;
import java.util.Date;

public class Resource extends BaseDomain{
	private String name; //资源名称
	private String url; //资源路径
	private String pid; //父ID
	private String summary; //介绍
	private Integer resOrder; //顺序
	private Date createDate; //创建日期
	private Date updateDate; //更新日期

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public Integer getResOrder() {
		return resOrder;
	}
	public void setResOrder(Integer resOrder) {
		this.resOrder = resOrder;
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
