package com.six.ems.entity;

import com.jdbc.util.annotation.Column;
import com.jdbc.util.annotation.PK;
import com.jdbc.util.annotation.Table;

@Table(name = "subjective")
public class Subjective {
	private Integer subId;
	private Integer courseId;
	private String subTitle;
	private String answer;
	
	public Subjective() {
		super();
	}

	public Subjective(Integer subId) {
		this.subId = subId;
	}
	
	public Subjective(Integer courseId, String subTitle, String answer) {
		super();
		this.courseId = courseId;
		this.subTitle = subTitle;
		this.answer = answer;
	}

	@PK(auto = true)
	@Column(value = "sub_id")
	public Integer getSubId() {
		return subId;
	}

	public void setSubId(Integer subId) {
		this.subId = subId;
	}

	@Column(value = "course_id")
	public Integer getCourseId() {
		return courseId;
	}

	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}

	@Column(value = "sub_title")
	public String getSubTitle() {
		return subTitle;
	}

	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}

	@Column(value = "answer")
	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

}
