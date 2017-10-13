package com.six.ems.dao.interfaces.socre;


import com.six.ems.entity.Score;

/**
 * 成绩接口
 * @author Direct
 * @data 2017年10月12日
 */
public interface ScoreDAO {
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
	 * 通过用户id获取学学生id
	 */
	public String getScoreIdByStuId(Integer userId);
}
