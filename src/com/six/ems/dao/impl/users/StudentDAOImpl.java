package com.six.ems.dao.impl.users;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.jdbc.util.tool.BeanUtils;
import com.six.ems.dao.interfaces.users.StudentDAO;
import com.six.ems.entity.Student;

/**
 * 实现studentDAO接口
 * @author qingge
 * @data 2017年10月12日
 */
public class StudentDAOImpl implements StudentDAO {

	/**
	 * 实现查询方法
	 */
	public String studentQuery(Class<Student> course, int page, int rows) {
		// 调用工具类查询
		List<Student> list = BeanUtils.query(Student.class, page, rows);
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
	public int studentAdd(Student student) {
		// 调用工具类存入数据
		return BeanUtils.persist(student);
	}
	
	/**
	 * 实现修改方法
	 */
	public int studentUpdate(Student student) {
		// 调用工具类的update方法更新数据
		return BeanUtils.update(student);
	}

	/**
	 * 实现删除方法
	 */
	public int studentDelete(Student student) {
		// 返回删除影响的行数
		return BeanUtils.delete(student);
	}
	
}
