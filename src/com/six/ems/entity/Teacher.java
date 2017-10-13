package com.six.ems.entity;

import com.jdbc.util.annotation.Column;
import com.jdbc.util.annotation.PK;
import com.jdbc.util.annotation.Table;
/**
 * 教师信息实体类
 * @author Direct
 *
 */
@Table(name="t_teacher")
public class Teacher {
	private Integer teaId;
	private String teaRealName;
	private String teaAccount;
	private String teaPassword;
	private String teaRemark;
	public Teacher() {
		super();
	}
	public Teacher(String account, String password) {
		this.teaAccount=account;
		this.teaPassword=password;
	}
	
	public Teacher(Integer teaId) {
		this.teaId = teaId;
	}
	@PK(auto=true)
	@Column(value="tea_id")
	public Integer getTeaId() {
		return teaId;
	}
	public void setTeaId(Integer teaId) {
		this.teaId = teaId;
	}
	@Column(value="tea_real_name")
	public String getTeaRealName() {
		return teaRealName;
	}
	public void setTeaRealName(String teaRealName) {
		this.teaRealName = teaRealName;
	}
	@Column(value="tea_account")
	public String getTeaAccount() {
		return teaAccount;
	}
	public void setTeaAccount(String teaAccount) {
		this.teaAccount = teaAccount;
	}
	@Column(value="tea_password")
	public String getTeaPassword() {
		return teaPassword;
	}
	public void setTeaPassword(String teaPassword) {
		this.teaPassword = teaPassword;
	}
	@Column(value="tea_remark")
	public String getTeaRemark() {
		return teaRemark;
	}
	public void setTeaRemark(String teaRemark) {
		this.teaRemark = teaRemark;
	}
}
