package ${groupId}.${artifactId}.model;
import ${groupId}.common.domain.BaseDomain;
import java.math.BigDecimal;
import java.util.Date;

public class Version extends BaseDomain{
	private String sysName; //系统名称
	private String sysVersion; //系统版本
	private Date buildDate; //构建时间
	private String copyRight; //版权归属
	private Date createDate; //创建日期

	public String getSysName() {
		return sysName;
	}
	public void setSysName(String sysName) {
		this.sysName = sysName;
	}
	public String getSysVersion() {
		return sysVersion;
	}
	public void setSysVersion(String sysVersion) {
		this.sysVersion = sysVersion;
	}
	public Date getBuildDate() {
		return buildDate;
	}
	public void setBuildDate(Date buildDate) {
		this.buildDate = buildDate;
	}
	public String getCopyRight() {
		return copyRight;
	}
	public void setCopyRight(String copyRight) {
		this.copyRight = copyRight;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
}
