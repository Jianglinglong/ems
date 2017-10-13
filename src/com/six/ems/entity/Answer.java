package com.six.ems.entity;

import com.jdbc.util.annotation.Column;
import com.jdbc.util.annotation.PK;
import com.jdbc.util.annotation.Table;

/**
 * �����ʵ����
 * 
 * @author Direct
 *
 */
@Table(name = "t_answer")
public class Answer {
//	�����id
	private Integer answerId;
//	ѧ����Ϣ��id
	private Integer stuId;
	
	private Integer paperId;
	private Integer choiceId;
//	�����id
	private Integer blankId;
//	�ж���id
	private Integer judgeId;
//	������id
	private Integer subId;
	
	private String subAnswer;


	
	public Answer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Answer(Integer answerId) {
	this.answerId=answerId;
		// TODO Auto-generated constructor stub
	}
	@PK(auto=true)
	@Column(value="answer_id")
	public Integer getAnswerId() {
		return answerId;
	}
	public void setAnswerId(Integer answerId) {
		this.answerId = answerId;
	}
	@Column(value="stu_id")
	public Integer getStuId() {
		return stuId;
	}
	public void setStuId(Integer stuId) {
		this.stuId = stuId;
	}
	@Column(value="paper_id")
	public Integer getPaperId() {
		return paperId;
	}
	public void setPaperId(Integer paperId) {
		this.paperId = paperId;
	}
	@Column(value="choice_id")
	public Integer getChoiceId() {
		return choiceId;
	}
	public void setChoiceId(Integer choiceId) {
		this.choiceId = choiceId;
	}
	@Column(value="blank_id")
	public Integer getBlankId() {
		return blankId;
	}
	public void setBlankId(Integer blankId) {
		this.blankId = blankId;
	}
	@Column(value="judge_id")
	public Integer getJudgeId() {
		return judgeId;
	}
	public void setJudgeId(Integer judgeId) {
		this.judgeId = judgeId;
	}
	@Column(value="sub_id")
	public Integer getSubId() {
		return subId;
	}
	
	public void setSubId(Integer subId) {
		this.subId = subId;
	}
	@Column(value="sub_answer")
	public String getSubAnswer() {
		return subAnswer;
	}
	public void setSubAnswer(String subAnswer) {
		this.subAnswer = subAnswer;
	}
	
	
}
