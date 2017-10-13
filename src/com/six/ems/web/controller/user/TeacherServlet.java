package com.six.ems.web.controller.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.ems.entity.Teacher;
import com.six.ems.utils.WebRequestUtil;
import com.six.ems.web.controller.base.BaseServlet;
import com.six.ems.web.service.impl.users.TeacherServiceImpl;

/**
 * 教师信息
 */
public class TeacherServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TeacherServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
	 * 转发到Teacher页面
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public String showTeacher(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 转发到 WEB-INF/jsp/Teacher/Teacher.jsp
		return  "/WEB-INF/jsp/teacher/teacher.jsp";
	}
    
	/**
	 * 查询所有老师的方法
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void queryTeacher(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 获取传入当前页和每页显示数
		String page = request.getParameter("page");
		String rows = request.getParameter("rows");
		// 创建TeacherServiceImpl实例
		TeacherServiceImpl teacherService = new TeacherServiceImpl();
		// 调用方法   响应结果json字符串
 		response.getWriter().print(teacherService.teacherQuery(Teacher.class, Integer.valueOf(page), Integer.valueOf(rows)));
	}

	/**
	 * 添加老师信息
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void addTeacher(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 调用工具类出入对象封装数据---注意(表单名必须与Teacher对象的属性相同)
		Teacher teacher = WebRequestUtil.parseObject(Teacher.class, request);
		// 创建TeacherServiceImpl实例
		TeacherServiceImpl teacherService = new TeacherServiceImpl();
		// 响应结果
		response.getWriter().print(teacherService.teacherAdd(teacher) > 0 ? "OK":"NO");
	}
	
	/**
	 * 修改老师信息
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void updateTeacher(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 调用工具类的封装参数
		Teacher teacher = WebRequestUtil.parseObject(Teacher.class, request);
		// 创建TeacherServiceImpl实例
		TeacherServiceImpl teacherService = new TeacherServiceImpl();
		// 判断  响应相应的结果
		response.getWriter().print(teacherService.teacherUpdate(teacher) > 0 ? "OK" : "NO");		
		
	}
	
	/**
	 * 删除老师信息
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void deleteTeacher(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 创建TeacherServiceImpl实例
		TeacherServiceImpl teacherService = new TeacherServiceImpl();
		// 获取请求删除的id
		String teaId = request.getParameter("teaId");
		// System.out.println(stuId);
		// 用逗号分隔id数组
		String[] tea = teaId.split(",");
		int row = 0;// 定义全局变量
		// 遍历id个数
		for (String sd : tea) {
			Teacher teacher = new Teacher(Integer.valueOf(sd));
			// 调用方法实现
			row += teacherService.teacherDelete(teacher);
		}
		// 判断是否成功
		if(row == tea.length) {
			response.getWriter().print("OK");
		}else if(row == 0) {
			response.getWriter().print("NO");
		}else {
			response.getWriter().print("NK");
		}
	}

}
