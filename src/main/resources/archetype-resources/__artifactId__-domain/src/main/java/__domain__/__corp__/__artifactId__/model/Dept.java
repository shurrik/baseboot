package ${groupId}.${artifactId}.model;
import ${groupId}.common.domain.BaseDomain;
import java.util.Date;

public class Dept extends BaseDomain{
	private String name; //部门名称
	private String pid; //上级部门ID
	private String pname; //上级部门名称
	private Integer depOrder; //顺序
	private Date createDate; //创建日期
	private Date updateDate; //更新日期

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Integer getDepOrder() {
		return depOrder;
	}
	public void setDepOrder(Integer depOrder) {
		this.depOrder = depOrder;
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
