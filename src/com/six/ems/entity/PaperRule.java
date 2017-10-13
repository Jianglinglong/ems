package com.six.ems.entity;

import java.math.BigDecimal;

import com.jdbc.util.annotation.Column;
import com.jdbc.util.annotation.PK;
import com.jdbc.util.annotation.Table;

@Table(name="t_paper_rule")
public class PaperRule {
    private Integer ruleID;
    private Integer courseID;
    private String singleChoiceChecked;
    private Integer singleChoiceNum;
    private BigDecimal singleScore;
    private String mulChoiceChecked;
    private Integer mulChoiceNum;
    private BigDecimal mulScore;
    private String fileBlankChoiceChecked;
    private Integer fileBlankChoiceNum;
    private BigDecimal fileBlankScore;
    private String judgeChoiceChecked;
    private Integer judgeChoiceNum;
    private BigDecimal judgeScore;
    private String subChoiceChecked;
    private Integer subChoiceNum;
    private BigDecimal subScore;
    private Integer ruleType;
    private Integer paperScore;

    public PaperRule() {
    }

    public PaperRule(Integer ruleID) {
        this.ruleID = ruleID;
    }

    public PaperRule(Integer courseID, String singleChoiceChecked, Integer singleChoiceNum, BigDecimal singleScore, String mulChoiceChecked, Integer mulChoiceNum, BigDecimal mulScore, String fileBlankChoiceChecked, Integer fileBlankChoiceNum, BigDecimal fileBlankScore, String judgeChoiceChecked, Integer judgeChoiceNum, BigDecimal judgeScore, String subChoiceChecked, Integer subChoiceNum, BigDecimal subScore, Integer ruleType, Integer paperScore) {
        this.courseID = courseID;
        this.singleChoiceChecked = singleChoiceChecked;
        this.singleChoiceNum = singleChoiceNum;
        this.singleScore = singleScore;
        this.mulChoiceChecked = mulChoiceChecked;
        this.mulChoiceNum = mulChoiceNum;
        this.mulScore = mulScore;
        this.fileBlankChoiceChecked = fileBlankChoiceChecked;
        this.fileBlankChoiceNum = fileBlankChoiceNum;
        this.fileBlankScore = fileBlankScore;
        this.judgeChoiceChecked = judgeChoiceChecked;
        this.judgeChoiceNum = judgeChoiceNum;
        this.judgeScore = judgeScore;
        this.subChoiceChecked = subChoiceChecked;
        this.subChoiceNum = subChoiceNum;
        this.subScore = subScore;
        this.ruleType = ruleType;
        this.paperScore = paperScore;
    }


    @PK(auto = true)
    @Column(value="rule_id")
    public Integer getRuleID() {
        return ruleID;
    }
    @Column(value="course_id")
    public Integer getCourseID() {
        return courseID;
    }
    @Column(value="single_choice_ck")
    public String getSingleChoiceChecked() {
        return singleChoiceChecked;
    }
    @Column(value="single_choice_num")
    public Integer getSingleChoiceNum() {
        return singleChoiceNum;
    }
    @Column(value="single_choice_score")
    public BigDecimal getSingleScore() {
        return singleScore;
    }
    @Column(value="mul_choice_ck")
    public String getMulChoiceChecked() {
        return mulChoiceChecked;
    }
    @Column(value="mul_choice_num")
    public Integer getMulChoiceNum() {
        return mulChoiceNum;
    }
    @Column(value="mul_choice_score")
    public BigDecimal getMulScore() {
        return mulScore;
    }
    @Column(value="fill_blank_ck")
    public String getFileBlankChoiceChecked() {
        return fileBlankChoiceChecked;
    }
    @Column(value="fill_blank_num")
    public Integer getFileBlankChoiceNum() {
        return fileBlankChoiceNum;
    }
    @Column(value="fill_blank_score")
    public BigDecimal getFileBlankScore() {
        return fileBlankScore;
    }
    @Column(value="judge_ck")
    public String getJudgeChoiceChecked() {
        return judgeChoiceChecked;
    }
    @Column(value="judge_num")
    public Integer getJudgeChoiceNum() {
        return judgeChoiceNum;
    }
    @Column(value="judge_score")
    public BigDecimal getJudgeScore() {
        return judgeScore;
    }
    @Column(value="sub_question_ck")
    public String getSubChoiceChecked() {
        return subChoiceChecked;
    }
    @Column(value="sub_question_num")
    public Integer getSubChoiceNum() {
        return subChoiceNum;
    }
    @Column(value="sub_question_score")
    public BigDecimal getSubScore() {
        return subScore;
    }
    @Column(value="paper_score")
    public Integer getRuleType() {
        return ruleType;
    }
    @Column(value="rule_type")
    public Integer getPaperScore() {
        return paperScore;
    }

    public void setRuleID(Integer ruleID) {
        this.ruleID = ruleID;
    }
    
    public void setCourseID(Integer courseID) {
        this.courseID = courseID;
    }

    public void setSingleChoiceChecked(String singleChoiceChecked) {
        this.singleChoiceChecked = singleChoiceChecked;
    }

    public void setSingleChoiceNum(Integer singleChoiceNum) {
        this.singleChoiceNum = singleChoiceNum;
    }

    public void setSingleScore(BigDecimal singleScore) {
        this.singleScore = singleScore;
    }

    public void setMulChoiceChecked(String mulChoiceChecked) {
        this.mulChoiceChecked = mulChoiceChecked;
    }

    public void setMulChoiceNum(Integer mulChoiceNum) {
        this.mulChoiceNum = mulChoiceNum;
    }

    public void setMulScore(BigDecimal mulScore) {
        this.mulScore = mulScore;
    }

    public void setFileBlankChoiceChecked(String fileBlankChoiceChecked) {
        this.fileBlankChoiceChecked = fileBlankChoiceChecked;
    }

    public void setFileBlankChoiceNum(Integer fileBlankChoiceNum) {
        this.fileBlankChoiceNum = fileBlankChoiceNum;
    }

    public void setFileBlankScore(BigDecimal fileBlankScore) {
        this.fileBlankScore = fileBlankScore;
    }

    public void setJudgeChoiceChecked(String judgeChoiceChecked) {
        this.judgeChoiceChecked = judgeChoiceChecked;
    }

    public void setJudgeChoiceNum(Integer judgeChoiceNum) {
        this.judgeChoiceNum = judgeChoiceNum;
    }

    public void setJudgeScore(BigDecimal judgeScore) {
        this.judgeScore = judgeScore;
    }

    public void setSubChoiceChecked(String subChoiceChecked) {
        this.subChoiceChecked = subChoiceChecked;
    }

    public void setSubChoiceNum(Integer subChoiceNum) {
        this.subChoiceNum = subChoiceNum;
    }

    public void setSubScore(BigDecimal subScore) {
        this.subScore = subScore;
    }

    public void setRuleType(Integer ruleType) {
        this.ruleType = ruleType;
    }

    public void setPaperScore(Integer paperScore) {
        this.paperScore = paperScore;
    }
}
