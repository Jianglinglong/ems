package com.six.ems.web.controller.score;

import com.six.ems.entity.Score;
import com.six.ems.utils.WebRequestUtil;
import com.six.ems.web.controller.base.BaseServlet;
import com.six.ems.web.service.impl.score.ScoreServiceImpl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 查询成绩
 */
public class ScoreServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ScoreServlet() {
        // TODO Auto-generated constructor stub
    }


    /**
	 * 转发到Score页面
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void showScore(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 从定向到 WEB-INF/jsp/Score/Score.jsp
		request.getRequestDispatcher("/WEB-INF/jsp/score/score.jsp").forward(request, response);
	}
	
	/**
	 * 查询所有成绩
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void queryScore(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 获取传入当前页和每页显示数
		String page = request.getParameter("page");
		String rows = request.getParameter("rows");
		// 创建ScoreServiceImpl实例对象
		ScoreServiceImpl scoreService = new ScoreServiceImpl();
		String scoreQuery = scoreService.scoreQuery(Score.class, Integer.valueOf(page), Integer.valueOf(rows));
		// 响应结果
		response.getWriter().print(scoreQuery);
	}
	
	/**
	 * 添加学生信息方法
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void addScore(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 调用工具类出入对象封装数据---注意(表单名必须与Score对象的属性相同)
		Score score = WebRequestUtil.parseObject(Score.class, request);
		// 创建ScoreServiceImpl实例对象
		ScoreServiceImpl scoreService = new ScoreServiceImpl();
		// 响应结果   ScoreService.scoreAdd(Score)(调用方法实现添加数据)
		response.getWriter().print(scoreService.scoreAdd(score) > 0 ? "OK" : "NO");
	}
	
	/**
	 * 修改学生信息方法
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void updateScore(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 调用工具类出入对象封装数据---注意(表单名必须与Score对象的属性相同)
		Score score = WebRequestUtil.parseObject(Score.class, request);
		// 创建ScoreServiceImpl实例对象
		ScoreServiceImpl ScoreService = new ScoreServiceImpl();
		// 响应结果   courseService.courseAdd(course)(调用方法实现修改数据)
		response.getWriter().print(ScoreService.ScoreUpdate(score) > 0 ? "OK" : "NO");
	}
	
	/**
	 * 删除学生信息
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void deleteScore(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 创建ScoreServiceImpl实例对象
		ScoreServiceImpl scoreService = new ScoreServiceImpl();
		// 获取请求删除的id
		String scoreId = request.getParameter("scoreId");
		// System.out.println(stuId);
		// 用逗号分隔id数组
		String[] sc = scoreId.split(",");
		int row = 0;// 定义全局变量
		// 遍历id个数
		for (String sd : sc) {
			Score score = new Score(Integer.valueOf(sd));
			row += scoreService.scoreDelete(score);
		}
		// 判断是否成功
		if(row == sc.length) {
			response.getWriter().print("OK");
		}else if(row == 0) {
			response.getWriter().print("NO");
		}else {
			response.getWriter().print("NK");
		}
	}
	

}
