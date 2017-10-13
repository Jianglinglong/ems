package com.six.ems.dao.impl.papers;

import com.jdbc.util.tool.BeanUtils;
import com.six.ems.dao.interfaces.papers.PaperRuleDAO;
import com.six.ems.entity.PaperRule;

public class PaperRuleDAOImpl implements PaperRuleDAO {

	@Override
	public int addPaperRule(PaperRule paperRule) {
		int row = BeanUtils.persist(paperRule);
		return row > 0 ? row : 0;
	}

}
