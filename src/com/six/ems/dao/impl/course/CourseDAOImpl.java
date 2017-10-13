package com.six.ems.dao.impl.course;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.jdbc.util.tool.BeanUtils;
import com.six.ems.dao.interfaces.course.CourseDAO;
import com.six.ems.entity.Course;
import com.six.ems.entity.Student;

/**
 * 科目管理接口实现类
 * @author qingge
 * @data 2017年10月12日
 */
public class CourseDAOImpl implements CourseDAO {

	/**
	 * 实现查询方法
	 */
	public String courseQuery(Class<Course> course, int page, int rows) {
		// 调用工具类查询
		List<Course> list = BeanUtils.query(Course.class, page, rows);
		int total = BeanUtils.query(Student.class).size();
		// 创建Map对象
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("total", total);
		map.put("rows", list);
		// 转为json字符串
		String CourseJson = JSON.toJSONString(map);
		// 返回json字符串
		return CourseJson;
	}

	/**
	 * 实现添加方法
	 */
	public int courseAdd(Course course) {
		// 调用工具类存入数据
		return BeanUtils.persist(course);
	}
	
	/**
	 * 实现修改方法
	 */
	public int courseUpdate(Course course) {
		// 调用工具类的update方法更新数据
		return BeanUtils.update(course);
	}

	/**
	 * 实现删除方法
	 */
	public int courseDelete(Course course) {
		// 返回删除影响的行数
		return BeanUtils.delete(course);
	}

	/**
	 * 查询所有
	 */
	public List<Course> courseQuery() {
		List<Course> courseList = BeanUtils.query(Course.class);
		return courseList;
	}

	

}
