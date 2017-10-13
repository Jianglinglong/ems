package com.six.ems.dao.interfaces.users;

import com.six.ems.entity.Teacher;

/**
 * 实现TeacherDAO接口
 * @author qingge
 * @data 2017年10月12日
 */
public interface TeacherDAO {
    /*boolean check(Teacher teacher);
    Teacher getTeacherByID(Integer teacherID);*/
	
	/**
	 * 查询老师方法
	 */
	public String teacherQuery(Class<Teacher> teacher,int page,int rows);
	
	/**
	 * 添加老师方法
	 */
	public int teacherAdd(Teacher teacher);
	
	/**
	 * 修改老师方法
	 */
	public int teacherUpdate(Teacher teacher);
	
	/**
	 * 删出老师方法
	 */
	public int teacherDelete(Teacher teacher);
	

}
