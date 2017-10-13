package com.six.ems.web.service.impl.course;

import java.util.List;

import com.six.ems.dao.impl.course.CourseDAOImpl;
import com.six.ems.dao.interfaces.course.CourseDAO;
import com.six.ems.entity.Course;
import com.six.ems.web.service.interfaces.course.CourseService;

/**
 * 科目管理service接口
 * @author qingge
 * @data 2017年10月12日
 */
public class CourseServiceImpl implements CourseService {

	// 创建CourseDAO对象
	private CourseDAO courseDao = new CourseDAOImpl();
	/**
	 * 实现查询方法
	 */
	public String courseQuery(int page, int rows) {
		// TODO Auto-generated method stub
		return courseDao.courseQuery(Course.class, page, rows);
	}

	/**
	 * 实现添加方法
	 */
	public int courseAdd(Course course) {
		// TODO Auto-generated method stub
		return courseDao.courseAdd(course);
	}

	/**
	 * 实现修改方法
	 */
	public int courseUpdate(Course course) {
		// TODO Auto-generated method stub
		return courseDao.courseUpdate(course);
	}

	/**
	 * 实现删除方法
	 */
	public int courseDelete(Course course) {
		// TODO Auto-generated method stub
		return courseDao.courseDelete(course);
	}

	/**
	 * 查询所有科目(不分页)
	 */
	public List<Course> courseQuery() {
		return courseDao.courseQuery();
	}

}
