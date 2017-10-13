package com.six.ems.entity;

import com.jdbc.util.annotation.Column;
import com.jdbc.util.annotation.PK;
import com.jdbc.util.annotation.Table;
@Table(name="t_exam")
public class Exam {
    private Integer examID;
    private Integer courseID;
    private Integer paperID;
    private Integer teaID;
	private String examTime;
    private String examAddr;

    public Exam() {
    }

    public Exam(Integer examID) {
        this.examID = examID;
    }

    public Exam(Integer courseID, Integer teaID, Integer paperID, String examTime, String examAddr) {
        this.courseID = courseID;
        this.paperID = paperID;
        this.teaID=teaID;
        this.examTime = examTime;
        this.examAddr = examAddr;
    }
    @PK(auto = true)
    @Column(value = "exam_id")
    public Integer getExamID() {
        return examID;
    }
    @Column(value = "course_id")
    public Integer getCourseID() {
        return courseID;
    }
    @Column(value = "paper_id")
    public Integer getPaperID() {
        return paperID;
    }
    @Column(value = "tea_id")
    public Integer getTeaID() {
		return teaID;
	}
    @Column(value = "exam_time")
    public String getExamTime() {
        return examTime;
    }
    @Column(value = "exam_addr")
    public String getExamAddr() {
        return examAddr;
    }

    public void setExamID(Integer examID) {
        this.examID = examID;
    }

    public void setCourseID(Integer courseID) {
        this.courseID = courseID;
    }

    public void setPaperID(Integer paperID) {
        this.paperID = paperID;
    }
    public void setTeaID(Integer teaID) {
		this.teaID = teaID;
	}

    public void setExamTime(String examTime) {
        this.examTime = examTime;
    }

    public void setExamAddr(String examAddr) {
        this.examAddr = examAddr;
    }
}
