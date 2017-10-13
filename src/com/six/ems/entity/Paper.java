package com.six.ems.entity;

import com.jdbc.util.annotation.Column;
import com.jdbc.util.annotation.PK;

public class Paper {
    private Integer paperID;
    private Integer coursID;
    private Integer ruleID;
    private Integer paperTime;

    public Paper() {
    }

    public Paper(Integer paperID) {
        this.paperID = paperID;
    }

    public Paper(Integer coursID, Integer ruleID, Integer paperTime) {
        this.coursID = coursID;
        this.ruleID = ruleID;
        this.paperTime = paperTime;
    }

    @PK(auto = true)
    @Column(value = "paper_id")
    public Integer getPaperID() {
        return paperID;
    }
    @Column(value = "course_id")
    public Integer getCoursID() {
        return coursID;
    }
    @Column(value = "rule_id")
    public Integer getRuleID() {
        return ruleID;
    }
    @Column(value = "paper_time")
    public Integer getPaperTime() {
        return paperTime;
    }

    public void setPaperID(Integer paperID) {
        this.paperID = paperID;
    }

    public void setCoursID(Integer coursID) {
        this.coursID = coursID;
    }

    public void setRuleID(Integer ruleID) {
        this.ruleID = ruleID;
    }

    public void setPaperTime(Integer paperTime) {
        this.paperTime = paperTime;
    }
}
