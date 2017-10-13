package com.six.ems.dao.impl.score;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.jdbc.util.compoent.LikeItem;
import com.jdbc.util.tool.BeanUtils;
import com.six.ems.dao.interfaces.socre.ScoreDAO;
import com.six.ems.entity.Score;
import com.six.ems.entity.User;

/**
 * 成绩接口实现
 * @author Direct
 * @data 2017年10月12日
 */
public class ScoreDAOImpl implements ScoreDAO {

	/**
	 * 实现查询方法
	 */
	public String scoreQuery(Class<Score> score, int page, int rows) {
		// 调用工具类查询 所有信息信息
		List<Score> list = BeanUtils.query(Score.class, page, rows);
		// 调用工具查询信息总的条数
		int total = BeanUtils.query(Score.class).size();
		// 构建map集合条件
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("total", total);
		map.put("rows", list);
		// 转为json字符串
		String CourseJson = JSON.toJSONString(map);
		// 返回json字符串
		return CourseJson;
	}

	/**
	 * 实现添加方法
	 */
	public int scoreAdd(Score score) {
		return BeanUtils.persist(score);
	}

	/**
	 * 实现修改方法
	 */
	public int ScoreUpdate(Score score) {
		return BeanUtils.update(score);
	}

	/**
	 * 实现删除方法
	 */
	public int scoreDelete(Score score) {
		return BeanUtils.delete(score);
	}

	/**
	 * 实现通过学生id查询成绩id
	 */
	public String getScoreIdByStuId(Integer userId) {
		Map<String,LikeItem> condition = new HashMap<String,LikeItem>();
		condition.put("user_id", new LikeItem(userId));
		// 通过用户id查询学生id
		List<User> userList = BeanUtils.query(User.class, condition);
		// 得到查询的数据对象
		User user = userList.get(0);
		// 获取学生id
		Integer stuId = user.getStuId();
		// 构建条件
		Map<String,LikeItem> cond = new HashMap<String,LikeItem>();
		cond.put("stu_id", new LikeItem(stuId));
		// 查询 
		List<Score> list = BeanUtils.query(Score.class, cond);
		// 返回json字符串
		return JSON.toJSONString(list, true);
	}

}
