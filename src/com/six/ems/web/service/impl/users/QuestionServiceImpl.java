package com.six.ems.web.service.impl.users;

import java.util.List;

import com.six.ems.dao.impl.questions.ChoiceDAOImpl;
import com.six.ems.dao.interfaces.questions.ChoiceDAO;
import com.six.ems.entity.Blank;
import com.six.ems.entity.Choice;
import com.six.ems.entity.Judge;
import com.six.ems.entity.Subjective;
import com.six.ems.web.service.interfaces.QuestionService;



public class QuestionServiceImpl implements QuestionService {
	private ChoiceDAO questionsDAO = new ChoiceDAOImpl();
	@Override
	public List<Choice> getChoice() {
		return questionsDAO.getAllChoice() ;
	}

	@Override
	public List<Blank> getBlank() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Judge> getJudge() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Subjective> getSubjective() {
		// TODO Auto-generated method stub
		return null;
	}

}
