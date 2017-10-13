package com.six.ems.web.service.impl;

import java.util.List;

import com.six.ems.dao.impl.exam.ExamsDAOImpl;
import com.six.ems.dao.impl.users.TeacherDAOImpl;
import com.six.ems.dao.interfaces.exams.ExamsDAO;
import com.six.ems.dao.interfaces.users.TeacherDAO;
import com.six.ems.entity.Exam;
import com.six.ems.entity.Teacher;
import com.six.ems.web.service.interfaces.ExamService;

public class ExamServiceImpl implements ExamService {
	private ExamsDAO  examDAO = new ExamsDAOImpl();
	/**
	 * 实现查询方法
	 */
	public String examQuery(Class<Exam> teacher, int page, int rows) {
		// TODO Auto-generated method stub
		return examDAO.examQuery(Exam.class, page, rows);
	}

	@Override
	public String startExam(String stuId, String courseId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<String> getAnswersByIds(String ids, String tableName, String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<String> getExamById(String stuId) {
		
		return null;
	}

	@Override
	public int examUpdate(Exam exam) {
		// TODO Auto-generated method stub
			return examDAO.examUpdate(exam);
	}

	@Override
	public int examAdd(Exam exam) {
	 	return examDAO.addExam(exam);
		
	}
	
	


}
