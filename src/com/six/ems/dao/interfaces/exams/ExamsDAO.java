package com.six.ems.dao.interfaces.exams;

import com.six.ems.entity.Exam;
import com.six.ems.entity.Paper;
import com.six.ems.entity.PaperRule;

public interface ExamsDAO {
	
    boolean addPaper(Paper paper);
   
    boolean addPaperRule( PaperRule paperRule);
  

    PaperRule getPaperRuleByID(Integer paperRuleID);

    Paper getPaperByID(Integer paperID);
    Paper getPaperByRule(PaperRule paperRule);

    /**
     * 根据id获得考试安排表
     * @param examID
     * @return
     */
    Exam getExamByID(Integer examID);
    /**
     * 添加考试安排
     * @param exam
     * @return
     */
    int addExam(Exam exam);
    /**
	 * 修改exam方法
	 * @param exam
	 * @return
	 */
	public int examUpdate(Exam exam);
	
	/**
	 * 查询exam方法
	 */
	public String examQuery(Class<Exam> exam,int page,int rows);
	
	
    
}
