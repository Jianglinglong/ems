package com.six.ems.dao.impl.users;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.jdbc.util.tool.BeanUtils;
import com.six.ems.dao.interfaces.users.TeacherDAO;
import com.six.ems.entity.Teacher;

/**
 * 实现TeacherDAO接口
 * @author qingge
 * @data 2017年10月12日
 */
public class TeacherDAOImpl implements TeacherDAO {

	/**
	 * 实现查询方法
	 */
	public String teacherQuery(Class<Teacher> teacher, int page, int rows) {
		// 调用工具类查询
		List<Teacher> list = BeanUtils.query(Teacher.class, page, rows);
		int total = BeanUtils.query(Teacher.class).size();
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
	public int teacherAdd(Teacher teacher) {
		// TODO Auto-generated method stub
		return BeanUtils.persist(teacher);
	}

	/**
	 * 实心修改方法
	 */
	public int teacherUpdate(Teacher teacher) {
		// TODO Auto-generated method stub
		return BeanUtils.update(teacher);
	}

	/**
	 * 实现删除方法
	 */
	public int teacherDelete(Teacher teacher) {
		// TODO Auto-generated method stub
		return BeanUtils.delete(teacher);
	}

}
