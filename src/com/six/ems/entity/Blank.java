package com.six.ems.entity;

import com.jdbc.util.annotation.Column;
import com.jdbc.util.annotation.PK;
import com.jdbc.util.annotation.Table;
@Table(name="t_blank")
public class Blank {

	
	private Integer blankId;
	private Integer courseId;
	private String blankTitle;
	private String answer;
	@PK(auto=true)
	@Column(value="blank_id")
	public Integer getBlankId() {
		return blankId;
	}
	public void setBlankId(Integer blankId) {
		this.blankId = blankId;
	}
	
	@Column(value="course_id")
	public Integer getCourseId() {
		return courseId;
	}
	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}
	@Column(value="blank_title")
	public String getBlankTitle() {
		return blankTitle;
	}
	public void setBlankTitle(String blankTitle) {
		this.blankTitle = blankTitle;
	}
	@Column(value="answer")
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
}
