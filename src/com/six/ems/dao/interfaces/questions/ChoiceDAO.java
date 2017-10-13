package com.six.ems.dao.interfaces.questions;

import java.util.List;

import com.six.ems.entity.Choice;

public interface ChoiceDAO {
	/**
	 * 查询所有选择题
	 */
	List<Choice> getAllChoice();
	
	/**
	 * 删除选择题
	 */
	Integer deleteChoice(Integer choiceId);
	
	/**
	 * 添加选择题
	 */
	Integer addChoice(Choice choice);
	
	/**
	 * 修改选择题
	 */
	Integer updateChoice(Choice choice);
	
	/**
	 * 查询选择题业务方法
	 */
	
}
