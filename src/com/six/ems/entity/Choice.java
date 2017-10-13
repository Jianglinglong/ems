package com.six.ems.entity;

import com.jdbc.util.annotation.Column;
import com.jdbc.util.annotation.PK;
import com.jdbc.util.annotation.Table;

@Table(name="t_choice")
public class Choice {

	private Integer choiceId;
	private Integer courseId;
	private String choiceTitle;
	private String answera;
	private String answerb;
	private String answerc;
	private String answerd;
	private String answer;
	private Integer choicetype;
	
	public Choice() {
		super();
	}
	public Choice(Integer choiceId) {
		this.choiceId = choiceId;
	}
	@PK(auto=true)
	@Column(value="choice_id")
	public Integer getChoiceId() {
		return choiceId;
	}
	public void setChoiceId(Integer choiceId) {
		this.choiceId = choiceId;
	}
	
	@Column(value="course_id")
	public Integer getCourseId() {
		return courseId;
	}
	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}
	@Column(value="choice_title")
	public String getChoiceTitle() {
		return choiceTitle;
	}
	public void setChoiceTitle(String choiceTitle) {
		this.choiceTitle = choiceTitle;
	}
	@Column(value="answer_a")
	public String getAnswera() {
		return answera;
	}
	public void setAnswera(String answera) {
		this.answera = answera;
	}
	@Column(value="answer_b")
	public String getAnswerb() {
		return answerb;
	}
	public void setAnswerb(String answerb) {
		this.answerb = answerb;
	}
	@Column(value="answer_c")
	public String getAnswerc() {
		return answerc;
	}
	public void setAnswerc(String answerc) {
		this.answerc = answerc;
	}
	@Column(value="answer_d")
	public String getAnswerd() {
		return answerd;
	}
	public void setAnswerd(String answerd) {
		this.answerd = answerd;
	}
	@Column(value="answer")
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	@Column(value="choice_type")
	public Integer getChoicetype() {
		return choicetype;
	}
	public void setChoicetype(Integer choicetype) {
		this.choicetype = choicetype;
	}
	
	
}
