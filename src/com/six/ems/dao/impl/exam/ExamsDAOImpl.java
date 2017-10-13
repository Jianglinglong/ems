package com.six.ems.dao.impl.exam;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.jdbc.util.tool.BeanUtils;
import com.six.ems.dao.interfaces.exams.ExamsDAO;
import com.six.ems.entity.Exam;
import com.six.ems.entity.Paper;
import com.six.ems.entity.PaperRule;
import com.six.ems.entity.Teacher;

public class ExamsDAOImpl implements ExamsDAO {
public  class date{
	
}
	@Override
	public boolean addPaper(Paper paper) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean addPaperRule(PaperRule paperRule) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int addExam(Exam exam) {
		
		return BeanUtils.persist(exam);
	}

	@Override
	public Exam getExamByID(Integer examID) {
		 Exam exam = new Exam(examID);
		 return exam;
	}

	@Override
	public PaperRule getPaperRuleByID(Integer paperRuleID) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Paper getPaperByID(Integer paperID) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Paper getPaperByRule(PaperRule paperRule) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int examUpdate(Exam exam) {
		// TODO Auto-generated method stub
				return BeanUtils.update(exam);
	}

	@Override
	public String examQuery(Class<Exam> exam, int page, int rows) {
		// 调用工具类查询
		List<Exam> list = BeanUtils.query(Exam.class, page, rows);
		int total = BeanUtils.query(Exam.class).size();
		// 创建Map对象
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("total", total);
		map.put("rows", list);
		// 转为json字符串
		String CourseJson = JSON.toJSONString(map);
		// 返回json字符串
		return CourseJson;
	}

}
