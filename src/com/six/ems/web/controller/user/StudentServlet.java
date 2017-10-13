package com.six.ems.web.controller.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.ems.entity.Student;
import com.six.ems.utils.WebRequestUtil;
import com.six.ems.web.controller.base.BaseServlet;
import com.six.ems.web.service.impl.users.StudentServiceImpl;

/**
 * 学生信息
 */
public class StudentServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    /**
	 * 转发到student页面
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void showStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 从定向到 WEB-INF/jsp/student/student.jsp
		request.getRequestDispatcher("/WEB-INF/jsp/student/student.jsp").forward(request, response);
	}
	
	/**
	 * 查询所有学生方法
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void queryStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 获取传入当前页和每页显示数
		String page = request.getParameter("page");
		String rows = request.getParameter("rows");
		// 创建StudentServiceImpl实例对象
		StudentServiceImpl studentService = new StudentServiceImpl();
		// 响应结果
		response.getWriter().print(studentService.studentQuery(Student.class, Integer.valueOf(page), Integer.valueOf(rows)));
	}
	

	/**
	 * 添加学生信息方法
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void addStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 调用工具类出入对象封装数据---注意(表单名必须与Student对象的属性相同)
		Student student = WebRequestUtil.parseObject(Student.class, request);
		// 创建StudentServiceImpl实例对象
		StudentServiceImpl studentService = new StudentServiceImpl();
		// 响应结果   courseService.courseAdd(course)(调用方法实现添加数据)
		response.getWriter().print(studentService.studentAdd(student) > 0 ? "OK" : "NO");
	}
	
	/**
	 * 修改学生信息方法
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void updateStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 调用工具类出入对象封装数据---注意(表单名必须与Student对象的属性相同)
		Student student = WebRequestUtil.parseObject(Student.class, request);
		// 创建StudentServiceImpl实例对象
		StudentServiceImpl studentService = new StudentServiceImpl();
		// 响应结果   courseService.courseAdd(course)(调用方法实现修改数据)
		response.getWriter().print(studentService.studentUpdate(student) > 0 ? "OK" : "NO");
	}
	
	/**
	 * 删除学生信息
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void deleteStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 创建StudentServiceImpl实例对象
		StudentServiceImpl studentService = new StudentServiceImpl();
		// 获取请求删除的id
		String stuId = request.getParameter("stuId");
		// System.out.println(stuId);
		// 用逗号分隔id数组
		String[] stu = stuId.split(",");
		int row = 0;// 定义全局变量
		// 遍历id个数
		for (String sd : stu) {
			Student student = new Student(Integer.valueOf(sd));
			row += studentService.studentDelete(student);
		}
		// 判断是否成功
		if(row == stu.length) {
			response.getWriter().print("OK");
		}else if(row == 0) {
			response.getWriter().print("NO");
		}else {
			response.getWriter().print("NK");
		}
	}

}
