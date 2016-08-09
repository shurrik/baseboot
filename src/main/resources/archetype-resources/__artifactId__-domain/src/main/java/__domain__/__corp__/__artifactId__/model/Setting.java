package ${groupId}.${artifactId}.model;
import ${groupId}.common.domain.BaseDomain;
import java.math.BigDecimal;
import java.util.Date;

public class Setting extends BaseDomain{
	private String paramVal; //值
	private String paramKey; //键
	private String note; //说明
	private Date createDate; //创建日期
	private Date updateDate; //更新日期

	public String getParamVal() {
		return paramVal;
	}
	public void setParamVal(String paramVal) {
		this.paramVal = paramVal;
	}
	public String getParamKey() {
		return paramKey;
	}
	public void setParamKey(String paramKey) {
		this.paramKey = paramKey;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
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
