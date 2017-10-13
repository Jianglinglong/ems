package com.six.ems.web.service.interfaces.score;


import com.six.ems.entity.Score;

/**
 * 定义ScoreService接口
 * @author qingge
 * @data 2017年10月12日
 */
public interface ScoreService {
	/**
	 * 查询成绩方法
	 */
	public String scoreQuery(Class<Score> score,int page,int rows);
	
	/**
	 * 添加成绩方法
	 */
	public int scoreAdd(Score score);
	
	/**
	 * 修改成绩方法
	 */
	public int ScoreUpdate(Score score);
	
	/**
	 * 删出成绩方法
	 */
	public int scoreDelete(Score score);
	
	/**
	 * 通过学生id获取成绩id
	 */
	public String getScoreIdByStuId(Integer userId);
	
}
