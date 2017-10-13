package com.six.ems.dao.impl.questions;

import java.util.List;

import com.jdbc.util.tool.BeanUtils;
import com.six.ems.dao.interfaces.questions.ChoiceDAO;
import com.six.ems.entity.Choice;
import com.six.ems.utils.CollectionUtils;

public class ChoiceDAOImpl implements ChoiceDAO {

	@Override
	public List<Choice> getAllChoice() {
		List<Choice> query = BeanUtils.query(Choice.class);
		return CollectionUtils.isNotBlank(query) ? query : null;
	}

	@Override
	public Integer deleteChoice(Integer choiceId) {
		int row = BeanUtils.delete(choiceId);
		
		return row > 0 ? row : null;
	}

	@Override
	public Integer addChoice(Choice choice) {
		int row = BeanUtils.persist(choice);
		
		return row > 0 ? row : null;
	}

	@Override
	public Integer updateChoice(Choice choice) {
		int row = BeanUtils.update(choice);
		
		return row > 0 ? row : null;
	}

}
