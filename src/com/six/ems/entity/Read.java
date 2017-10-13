package com.six.ems.entity;

import com.jdbc.util.annotation.Column;
import com.jdbc.util.annotation.PK;
import com.jdbc.util.annotation.Table;

/**
 * �ľ��ʵ��
 * @author Direct
 *
 */
@Table(name="t_read")
public class Read {

	private Integer readId;
	private Integer	answerId;
	private Integer	subId;
	private Integer	subScore;
	
	
	public Read() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Read(Integer readId) {
		this.readId=readId;
	}
	@PK(auto=true)
	@Column(value="read_id")
	public Integer getReadId() {
		return readId;
	}
	public void setReadId(Integer readId) {
		this.readId = readId;
	}
	@Column(value="answer_id")
	public Integer getAnswerId() {
		return answerId;
	}
	public void setAnswerId(Integer answerId) {
		this.answerId = answerId;
	}
	@Column(value="sub_id")
	public Integer getSubId() {
		return subId;
	}
	public void setSubId(Integer subId) {
		this.subId = subId;
	}
	@Column(value="sub_score")
	public Integer getSubScore() {
		return subScore;
	}
	public void setSubScore(Integer subScore) {
		this.subScore = subScore;
	}
	
}
