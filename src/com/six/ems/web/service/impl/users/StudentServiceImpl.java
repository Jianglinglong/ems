package com.six.ems.web.service.impl.users;

import com.six.ems.dao.impl.users.StudentDAOImpl;
import com.six.ems.dao.interfaces.users.StudentDAO;
import com.six.ems.entity.Student;
import com.six.ems.web.service.interfaces.users.StudentService;

public class StudentServiceImpl implements StudentService {

	// 创建对象
	private StudentDAO studentDao = new StudentDAOImpl(); 
	/**
	 * 实现查询方法
	 */
	public String studentQuery(Class<Student> student, int page, int rows) {
		// TODO Auto-generated method stub
		return studentDao.studentQuery(Student.class, page, rows);
	}

	/**
	 * 实现添加方法
	 */
	public int studentAdd(Student student) {
		// TODO Auto-generated method stub
		return studentDao.studentAdd(student);
	}

	/**
	 * 实现修改方法
	 */
	public int studentUpdate(Student student) {
		// TODO Auto-generated method stub
		return studentDao.studentUpdate(student);
	}

	/**
	 * 实现删除方法
	 */
	public int studentDelete(Student student) {
		// TODO Auto-generated method stub
		return studentDao.studentDelete(student);
	}

}
