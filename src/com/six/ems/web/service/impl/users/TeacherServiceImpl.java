package com.six.ems.web.service.impl.users;

import com.six.ems.dao.impl.users.TeacherDAOImpl;
import com.six.ems.dao.interfaces.users.TeacherDAO;
import com.six.ems.entity.Teacher;
import com.six.ems.web.service.interfaces.users.TeacherService;

/**
 * 实现TeacherDAO接口
 * @author qingge
 * @data 2017年10月12日
 */
public class TeacherServiceImpl implements TeacherService {

	// 创建TeacherDAO的对象
	private TeacherDAO teacherDao = new TeacherDAOImpl();
	
	/**
	 * 实现查询方法
	 */
	public String teacherQuery(Class<Teacher> teacher, int page, int rows) {
		// TODO Auto-generated method stub
		return teacherDao.teacherQuery(Teacher.class, page, rows);
	}

	/**
	 * 实现添加方法
	 */
	public int teacherAdd(Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherDao.teacherAdd(teacher);
	}

	/**
	 * 实现修改方法
	 */
	public int teacherUpdate(Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherDao.teacherUpdate(teacher);
	}

	/**
	 * 实现删除方法
	 */
	public int teacherDelete(Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherDao.teacherDelete(teacher);
	}

}
