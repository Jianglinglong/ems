package com.six.ems.web.service.interfaces.paper;

import com.six.ems.entity.PaperRule;

public interface PaperRuleService {
	/**
	 * 将数据存入
	 */
	int addPaperRule(PaperRule paperRule);
	
	/**
	 * 自动组卷获取题目
	 */
	String getQuestionsToPaper(String num,String score,String questionType);
}
