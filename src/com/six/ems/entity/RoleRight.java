package com.six.ems.entity;

import com.jdbc.util.annotation.Column;
import com.jdbc.util.annotation.PK;
import com.jdbc.util.annotation.Table;

/**
 * 角色权限管理实体类
 * @author qingge
 * @data 2017年10月9日
 *
 */
@Table(name="t_role_right")
public class RoleRight {
	private Integer roleRightId;// 角色权限管理id
	private Integer rightId;// 权限管理id
	private Integer roleId;// 角色管理id
	
	public RoleRight() {
		
	}

	public RoleRight(Integer roleRightId) {
		this.roleRightId = roleRightId;
	}

	public RoleRight(Integer roleRightId, Integer rightId, Integer roleId) {
		this.roleRightId = roleRightId;
		this.rightId = rightId;
		this.roleId = roleId;
	}
	
	@PK(auto=true)
	@Column(value="role_right_id")
	public Integer getRoleRightId() {
		return roleRightId;
	}
	public void setRoleRightId(Integer roleRightId) {
		this.roleRightId = roleRightId;
	}
	@Column(value="right_id")
	public Integer getRightId() {
		return rightId;
	}
	public void setRightId(Integer rightId) {
		this.rightId = rightId;
	}
	@Column(value="role_id")
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	
}
