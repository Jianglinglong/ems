package com.six.ems.web.service.impl.paper;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.six.ems.dao.impl.papers.PaperRuleDAOImpl;
import com.six.ems.dao.impl.questions.ChoiceDAOImpl;
import com.six.ems.entity.Blank;
import com.six.ems.entity.Choice;
import com.six.ems.entity.Judge;
import com.six.ems.entity.PaperRule;
import com.six.ems.entity.Subjective;
import com.six.ems.web.service.interfaces.paper.PaperRuleService;

public class PaperRuleServiceImpl implements PaperRuleService {

	@Override
	public int addPaperRule(PaperRule paperRule) {
		
		return new PaperRuleDAOImpl().addPaperRule(paperRule);
	}

	@Override
	public String getQuestionsToPaper(String nums, String scores, String questionType) {
		Integer num = Integer.valueOf(nums);
		Integer score = Integer.valueOf(scores);
		if(num > 0) {
			String json ="";
			if(questionType.equals("choice")) {
				List<Choice> allChoice = new ChoiceDAOImpl().getAllChoice();
				json = "[";
				Collections.shuffle(allChoice);
				for(int i = 0; i < num; i++) {
					json += "{'id:'"+allChoice.get(i).getChoiceId();
					json += ",'score':"+score+"},";
				}
				json = json.substring(0, json.length()-1);
				json += "]";
			} else if(questionType.equals("multiple")) {
				List<Choice> allMultiple = null;
				json = "[";
				Collections.shuffle(allMultiple);
				for(int i = 0; i < num; i++) {
					json += "{'id:'"+allMultiple.get(i).getChoiceId();
					json += ",'score':"+score+"},";
				}
				json = json.substring(0, json.length()-1);
				json += "]";
			} else if(questionType.equals("blank")) {
				List<Blank> allBlank = null;
				json = "[";
				Collections.shuffle(allBlank);
				for(int i = 0; i < num; i++) {
					json += "{'id:'"+allBlank.get(i).getBlankId();
					json += ",'score':"+score+"},";
				}
				json = json.substring(0, json.length()-1);
				json += "]";
			} else if(questionType.equals("judge")) {
				List<Judge> allJudge = null;
				json = "[";
				Collections.shuffle(allJudge);
				for(int i = 0; i < num; i++) {
					json += "{'id:'"+allJudge.get(i).getJudgeId();
					json += ",'score':"+score+"},";
				}
				json = json.substring(0, json.length()-1);
				json += "]";
			} else if(questionType.equals("subjective")) {
				List<Subjective> allSubjective = null;
				json = "[";
				Collections.shuffle(allSubjective);
				for(int i = 0; i < num; i++) {
					json += "{'id:'"+allSubjective.get(i).getSubId();
					json += ",'score':"+score+"},";
				}
				json = json.substring(0, json.length()-1);
				json += "]";
			}
			
			return json;
		} else {
			return "";
		}
	}

}
