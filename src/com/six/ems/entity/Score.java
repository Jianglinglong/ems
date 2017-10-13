package com.six.ems.entity;

import com.jdbc.util.annotation.Column;
import com.jdbc.util.annotation.PK;
import com.jdbc.util.annotation.Table;
/**
 * 成绩查询类
 * @author Direct
 *
 */
@Table(name="t_socre")
public class Score {
	private Integer scoreId;
	private Integer stuId;
	private Integer paperId;
	private Integer courseId;
	private Integer autoScore;
	private Integer subScore;
	private Integer totalScore;
	
	public Score() {
		super();
	}
	public Score(Integer scoreId) {
		this.scoreId=scoreId;
	}
	
	@PK(auto=true)
	@Column(value="score_id")
	public Integer getScoreId() {
		return scoreId;
	}
	public void setScoreId(Integer scoreId) {
		this.scoreId = scoreId;
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
	@Column(value="course_id")
	public Integer getCourseId() {
		return courseId;
	}
	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}
	@Column(value="auto_score")
	public Integer getAutoScore() {
		return autoScore;
	}
	public void setAutoScore(Integer autoScore) {
		this.autoScore = autoScore;
	}
	@Column(value="sub_score")
	public Integer getSubScore() {
		return subScore;
	}
	public void setSubScore(Integer subScore) {
		this.subScore = subScore;
	}
	@Column(value="total_score")
	public Integer getTotalScore() {
		return totalScore;
	}
	public void setTotalScore(Integer totalScore) {
		this.totalScore = totalScore;
	}
	
}
