package com.six.ems.web.service.interfaces;

import java.util.List;

import com.six.ems.entity.Exam;
import com.six.ems.entity.Teacher;

public interface ExamService {
/**
 * 开始考试的业务方法
 */
	public String startExam(String stuId,String courseId);
	
	
	/**
	 * 获取题号对应的正确答案
	 */
	public List<String> getAnswersByIds(String ids,String tableName,String id);
	/**
	 * 获取安排表的方法
	 * 
	 */
	public List<String> getExamById(String stuId);

/**
 * 修改exam的方法
 * @param exam
 * @return
 */
	public int examUpdate(Exam exam);
	
	/**
	 * 添加exam的方法
	 * @param teacher
	 * @return
	 */
	public int examAdd(Exam exam);
	
}
