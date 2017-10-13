package com.six.ems.web.service.interfaces;

import java.util.List;

import com.six.ems.entity.Blank;
import com.six.ems.entity.Choice;
import com.six.ems.entity.Judge;
import com.six.ems.entity.Subjective;

public interface QuestionService {
	// 查询所有单选题的方法
			public List<Choice> getChoice();
			
			// 查询所有多选题的方法
			//public List<Choices> getChoices();
			
			// 查询所有填空题的方法
			public List<Blank> getBlank();
			
			// 查询所有判断题的方法
			public List<Judge> getJudge();
			
			// 查询所有主观题的方法
			public List<Subjective> getSubjective();
		
		    //手动组卷方法
		  // public int shouPacking();
		
	        //自动组卷方法
		//   public int randomPacking();
		
}
