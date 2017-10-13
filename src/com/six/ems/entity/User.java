package com.six.ems.entity;

import com.jdbc.util.annotation.Column;
import com.jdbc.util.annotation.PK;
import com.jdbc.util.annotation.Table;
/**
 * 用户信息实体类
 * @author Direct
 *
 */
@Table(name="t_user")
public class User {
	private Integer userId;
	private Integer teaId;
	private Integer stuId;
	public User() {
		super();
	}
	@PK(auto=true)
	@Column(value="user_id")
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	@Column(value="tea_id")
	public Integer getTeaId() {
		return teaId;
	}
	public void setTeaId(Integer teaId) {
		this.teaId = teaId;
	}
	@Column(value="stu_id")
	public Integer getStuId() {
		return stuId;
	}
	public void setStuId(Integer stuId) {
		this.stuId = stuId;
	}
}
