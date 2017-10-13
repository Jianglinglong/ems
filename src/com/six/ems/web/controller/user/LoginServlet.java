package com.six.ems.web.controller.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.ems.web.controller.base.BaseServlet;
import com.six.ems.web.service.impl.users.UserServiceImpl;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public LoginServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	public String logincheck(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		String principle = request.getParameter("user");
		String[] userMessage = new UserServiceImpl().login(principle, account, password);
		Integer userId = Integer.valueOf(userMessage[0]);
		String userName = userMessage[1];
		if(userId != null) {
			// 保存登陆的用户id
			request.getSession().setAttribute("userId", userId);
			request.getSession().setAttribute("userName", userName);
			request.setAttribute("menuJson", getMenuJson(userId));
			
			return "/WEB-INF/jsp/index.jsp";
		} else {
			return "login.jsp";
		}
		
	}
	
	private String getMenuJson(Integer userId) {
		return new UserServiceImpl().getMenuById(userId);
	}

}
