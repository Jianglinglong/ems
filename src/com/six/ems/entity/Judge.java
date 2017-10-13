package com.six.ems.entity;

import com.jdbc.util.annotation.Column;
import com.jdbc.util.annotation.PK;
import com.jdbc.util.annotation.Table;

@Table(name="t_judge")
public class Judge {
private Integer judgeId;
private Integer courseId;
private String judgeTitle;
private String answer;
@PK(auto=true)
@Column(value="judge_id")
public Integer getJudgeId() {
	return judgeId;
}
public void setJudgeId(Integer judgeId) {
	this.judgeId = judgeId;
}

@Column(value="course_id")
public Integer getCourseId() {
	return courseId;
}
public void setCourseId(Integer courseId) {
	this.courseId = courseId;
}
@Column(value="judge_title")
public String getJudgeTitle() {
	return judgeTitle;
}
public void setJudgeTitle(String judgeTitle) {
	this.judgeTitle = judgeTitle;
}
@Column(value="answer")
public String getAnswer() {
	return answer;
}
public void setAnswer(String answer) {
	this.answer = answer;
}

}
