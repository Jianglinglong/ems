package com.six.ems.web.service.impl.score;


import com.six.ems.dao.impl.score.ScoreDAOImpl;
import com.six.ems.dao.interfaces.socre.ScoreDAO;
import com.six.ems.entity.Score;
import com.six.ems.web.service.interfaces.score.ScoreService;

/**
 * 实现ScoreService接口
 * @author qingge
 * @data 2017年10月12日
 */
public class ScoreServiceImpl implements ScoreService {

	// 创建ScoreDAO实例
	private ScoreDAO scoreDao = new ScoreDAOImpl();
	
	/**
	 * 实现查询方法
	 */
	public String scoreQuery(Class<Score> score, int page, int rows) {
		return scoreDao.scoreQuery(Score.class, page, rows);
	}

	/**
	 * 实现添加方法
	 */
	public int scoreAdd(Score score) {
		return scoreDao.scoreAdd(score);
	}

	/**
	 * 实现修改方法
	 */
	public int ScoreUpdate(Score score) {
		return scoreDao.ScoreUpdate(score);
	}

	/**
	 * 实现删除方法
	 */
	public int scoreDelete(Score score) {
		return scoreDao.scoreDelete(score);
	}

	/**
	 * 实现查询学生成绩的方法
	 */
	public String getScoreIdByStuId(Integer userId) {
		return scoreDao.getScoreIdByStuId(userId);
	}

}
