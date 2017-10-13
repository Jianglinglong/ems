package com.six.ems.web.service.interfaces.users;

import com.six.ems.entity.Teacher;

/**
 * 实现TeacherDAO接口
 * @author qingge
 * @data 2017年10月12日
 */
public interface TeacherService {

    /*boolean addChoice(Choice choice);
    boolean addBlank(Blank blank);
    boolean addJudge(Judge judge);
    boolean addSubjective(Subjective subjective);
    boolean addPaperRule(PaperRule paperRule);
    boolean addPaper(Paper paper);
    boolean addExam(Exam exam);
    Answer getAnswerByID(Integer answerID);
    boolean readAnswer(Answer answer);
    boolean addScore(Student student , BigDecimal bigDecimal);*/
	
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
