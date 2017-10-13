package com.six.ems.entity;

import com.jdbc.util.annotation.Column;
import com.jdbc.util.annotation.PK;
import com.jdbc.util.annotation.Table;

/**
 * 角色管理实体类
 * @author Direct
 *
 */
@Table(name="t_role")
public class Role {
	private Integer roleId;// 角色id
	private String roleName;// 角色姓名
	
	public Role() {
		super();
	}
	
	@PK(auto=true)
	@Column(value="role_id")
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	@Column(value="role_name")
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
}
