package com.six.ems.web.service.interfaces.users;

import com.six.ems.entity.Student;

public interface StudentService {
    /*Paper getPaper(Student student);
    boolean beginPaper(Paper paper);
    double getScore(Student student , Paper paper);
    boolean doChoice(Choice choice);
    boolean doBlank(Blank blank);
    boolean doJudge(Judge judge);
    boolean doSubjective(Subjective subjective);
    boolean commitPaper(Answer answer);*/
	
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
