package com.six.ems.entity;

import com.jdbc.util.annotation.Column;
import com.jdbc.util.annotation.PK;
import com.jdbc.util.annotation.Table;

/**
 * 考试科目管理实体类
 * @author qingge
 * @data 2017年10月9日
 *
 */
@Table(name="t_course")
public class Course {
	private Integer courseId;// 科目id
	private String courseName;// 科目名称
	private String enable;// 是否启用
	
	public Course() {
		
	}
	
	public Course(Integer courseId) {
		this.courseId = courseId;
	}

	public Course(Integer courseId, String courseName, String enable) {
		super();
		this.courseId = courseId;
		this.courseName = courseName;
		this.enable = enable;
	}
	
	@PK(auto=true)
	@Column(value="course_id")
	public Integer getCourseId() {
		return courseId;
	}
	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}
	@Column(value="course_name")
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	@Column(value="enable")
	public String getEnable() {
		return enable;
	}
	public void setEnable(String enable) {
		this.enable = enable;
	}
	
}
