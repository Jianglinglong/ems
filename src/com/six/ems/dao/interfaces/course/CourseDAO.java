package com.six.ems.dao.interfaces.course;

import java.util.List;

import com.six.ems.entity.Course;

/**
 * 科目管理接口
 * @author qingge
 * @data 2017年10月12日
 */
public interface CourseDAO {
	/**
	 * 查询所有科目方法(分页)
	 */
	public String courseQuery(Class<Course> course,int page,int rows);
	
	/**
	 * 查询所有科目方法
	 */
	public List<Course> courseQuery();
	
	/**
	 * 添加科目方法
	 */
	public int courseAdd(Course course);
	
	/**
	 * 修改科目方法
	 */
	public int courseUpdate(Course course);
	
	/**
	 * 删出科目方法
	 */
	public int courseDelete(Course course);
	
}
