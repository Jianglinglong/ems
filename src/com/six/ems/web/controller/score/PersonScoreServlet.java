package com.six.ems.web.controller.score;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.six.ems.web.controller.base.BaseServlet;
import com.six.ems.web.service.impl.score.ScoreServiceImpl;

/**
 * 查询学生个人成绩
 */
public class PersonScoreServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public PersonScoreServlet() {
        // TODO Auto-generated constructor stub
    }

    /**
	 * 转发到personScore页面
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void showPersonScore(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 从定向到 WEB-INF/jsp/Score/personScore.jsp
		request.getRequestDispatcher("/WEB-INF/jsp/score/personScore.jsp").forward(request, response);
	}
	
	/**
	 * 查询学生个人成绩
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void queryPersonScore(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 获取登录的id
		Object userId = request.getSession().getAttribute("userId");
		// 创建ScoreServiceImpl实例对象
		ScoreServiceImpl scoreService = new ScoreServiceImpl();
		//  调用方法  响应结果
		response.getWriter().print(scoreService.getScoreIdByStuId((Integer)userId));
		
	}

}
