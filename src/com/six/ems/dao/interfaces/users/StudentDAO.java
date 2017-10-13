package com.six.ems.dao.interfaces.users;

import com.six.ems.entity.Student;

/**
 * 实现studentDAO接口
 * @author qingge
 * @data 2017年10月12日
 */
public interface StudentDAO {
    /*Double getScore(Student student);
    boolean beginTest(Paper paper);*/
    
	/**
	 * 查询学生方法
	 */
	
	public String studentQuery(Class<Student> student,int page,int rows);
	
	/**
	 * 添加学生方法
	 */
	public int studentAdd(Student student);
	
	/**
	 * 修改学生方法
	 */
	public int studentUpdate(Student student);
	
	/**
	 * 删出学生方法
	 */
	public int studentDelete(Student student);
    
}
