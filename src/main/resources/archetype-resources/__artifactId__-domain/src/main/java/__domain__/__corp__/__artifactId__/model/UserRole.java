package ${groupId}.${artifactId}.model;
import ${groupId}.common.domain.BaseDomain;
import java.util.Date;

public class UserRole extends BaseDomain{
	private String userId; //用户ID
	private String realName; //真实姓名
	private String roleId; //角色ID
	private String roleName; //角色名称
	private Date createDate; //创建日期
	private Date updateDate; //更新日期

	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
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
