package com.six.ems.web.service.impl.questions;

import java.util.List;

import com.six.ems.dao.impl.questions.ChoiceDAOImpl;
import com.six.ems.entity.Choice;
import com.six.ems.web.service.interfaces.questions.ChoiceService;

public class ChoiceServiceImpl implements ChoiceService {

	@Override
	public List<Choice> getAllChoice() {
		
		return new ChoiceDAOImpl().getAllChoice();
	}

	@Override
	public Integer deleteChoice(Integer choiceId) {
		
		return new ChoiceDAOImpl().deleteChoice(choiceId);
	}

	@Override
	public Integer addChoice(Choice choice) {
		
		return new ChoiceDAOImpl().addChoice(choice);
	}

	@Override
	public Integer updateChoice(Choice choice) {

		return new ChoiceDAOImpl().updateChoice(choice);
	}

}
