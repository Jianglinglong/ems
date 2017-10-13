package com.six.ems.web.controller.course;

import com.six.ems.entity.Course;
import com.six.ems.utils.WebRequestUtil;
import com.six.ems.web.controller.base.BaseServlet;
import com.six.ems.web.service.impl.course.CourseServiceImpl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 科目实现servlet
 */
public class CourseServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public CourseServlet() {
        // TODO Auto-generated constructor stub
    }
    
    /**
	 * 转发到course页面
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void showCourse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 从定向到 /WEB-INF/jsp/course/course.jsp
		request.getRequestDispatcher("/WEB-INF/jsp/course/course.jsp").forward(request, response);
	}
	
    /**
     * 科目查询
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
	public void queryCourse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 获取传入当前页和每页显示数
		String page = request.getParameter("page");
		String rows = request.getParameter("rows");
		// 创建CourseServiceImpl实例对象
		CourseServiceImpl courseService = new CourseServiceImpl();
		// 响应结果
		response.getWriter().print(courseService.courseQuery(Integer.valueOf(page), Integer.valueOf(rows)));
		
	}
	
	/**
	 * 添加科目
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void addCourse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 调用工具类出入对象封装数据---注意(表单名必须与Student对象的属性相同)
		Course course = WebRequestUtil.parseObject(Course.class, request);
		// 创建CourseServiceImpl实例对象
		CourseServiceImpl courseService = new CourseServiceImpl();
		// 响应结果   courseService.courseAdd(course)(调用方法实现添加数据)
		response.getWriter().print(courseService.courseAdd(course) > 0 ? "OK" : "NO");
	}
	
	/**
	 * 修改科目
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void updateCourse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 调用工具类出入对象封装数据---注意(表单名必须与Student对象的属性相同)
		Course course = WebRequestUtil.parseObject(Course.class, request);
		// 创建CourseServiceImpl实例对象
		CourseServiceImpl courseService = new CourseServiceImpl();
		// 响应结果   courseService.courseAdd(course)(调用方法实现修改数据)
		response.getWriter().print(courseService.courseUpdate(course) > 0 ? "OK" : "NO");
	}
	
	/**
	 * 删除科目
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void deleteCourse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 创建CourseServiceImpl实例对象
		CourseServiceImpl courseService = new CourseServiceImpl();
		// 获取请求删除的id
		String courseId = request.getParameter("courseId");
		// 用逗号分隔要删除的id数组
		String[] cou = courseId.split(",");
		int row = 0;// 定义全局变量
		// 遍历id个数
		for (String sd : cou) {
			Course cs = new Course(Integer.valueOf(sd));
			// 调用方法
			row += courseService.courseDelete(cs);
		}
		// 判断是否成功
		if(row == cou.length) {
			response.getWriter().print("OK");
		}else if(row == 0) {
			response.getWriter().print("NO");
		}else {
			response.getWriter().print("NK");
		}
	}
	

}
