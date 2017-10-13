package com.six.ems.entity;

import com.jdbc.util.annotation.Column;
import com.jdbc.util.annotation.PK;
import com.jdbc.util.annotation.Table;
/**
 * 用户角色关系实体类
 * @author Direct
 *
 */
@Table(name="t_user_role")
public class UserAndRole {
	private Integer userRoleId;
	private Integer userId;
	private Integer roleId;
	public UserAndRole() {
		super();
	}
	@PK(auto=true)
	@Column(value="user_role_id")
	public Integer getUserRoleId() {
		return userRoleId;
	}
	public void setUserRoleId(Integer userRoleId) {
		this.userRoleId = userRoleId;
	}
	@Column(value="user_id")
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	@Column(value="role_id")
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	
}
