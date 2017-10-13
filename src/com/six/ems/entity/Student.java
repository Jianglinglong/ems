package com.six.ems.entity;

import com.jdbc.util.annotation.Column;
import com.jdbc.util.annotation.PK;
import com.jdbc.util.annotation.Table;
/**
 * 学生信息实体类
 * @author Direct
 *
 */
@Table(name="t_student")
public class Student {
	private Integer stuId;
	private String stuRealName;
	private String stuAccount;
	private String stuPassword;
	private String stuClass;
	public Student() {
		super();
	}
	
	public Student(Integer stuId) {
	    this.stuId = stuId;
    }
	
	public Student(String account, String password) {
		this.stuAccount = account;
		this.stuPassword = password;
	}
	
	public Student(String stuRealName, String stuAccount, String stuPassword, String stuClass) {
		super();
		this.stuRealName = stuRealName;
		this.stuAccount = stuAccount;
		this.stuPassword = stuPassword;
		this.stuClass = stuClass;
	}

    @PK(auto=true)
	@Column(value="stu_id")
	public Integer getStuId() {
		return stuId;
	}
	public void setStuId(Integer stuId) {
		this.stuId = stuId;
	}
	@Column(value="stu_real_name")
	public String getStuRealName() {
		return stuRealName;
	}
	public void setStuRealName(String stuRealName) {
		this.stuRealName = stuRealName;
	}
	@Column(value="stu_account")
	public String getStuAccount() {
		return stuAccount;
	}
	public void setStuAccount(String stuAccount) {
		this.stuAccount = stuAccount;
	}
	@Column(value="stu_password")
	public String getStuPassword() {
		return stuPassword;
	}
	public void setStuPassword(String stuPassword) {
		this.stuPassword = stuPassword;
	}
	@Column(value="stu_class")
	public String getStuClass() {
		return stuClass;
	}
	public void setStuClass(String stuClass) {
		this.stuClass = stuClass;
	}
}
