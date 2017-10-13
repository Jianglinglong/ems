package com.six.ems.web.controller.exam;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jdbc.util.tool.BeanUtils;
import com.six.ems.entity.Exam;
import com.six.ems.entity.Student;
import com.six.ems.entity.Teacher;
import com.six.ems.utils.CollectionUtils;
import com.six.ems.utils.WebRequestUtil;
import com.six.ems.web.controller.base.BaseServlet;
import com.six.ems.web.service.impl.ExamServiceImpl;
import com.six.ems.web.service.impl.users.TeacherServiceImpl;

/**
 * Servlet implementation class ExamServlet
 */
public class ExamServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExamServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public String initExam(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		return "WEB-INF/jsp/exam/stu_exam.jsp";
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void getExams(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Exam> query = BeanUtils.query(Exam.class);
		String json = CollectionUtils.creatDataGritJson(query);
		response.getWriter().print(json);
	}
	/**
	 * servlet 添加
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void addExam(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 调用工具类出入对象封装数据---注意(表单名必须与Student对象的属性相同)
		Exam exam = WebRequestUtil.parseObject(Exam.class, request);
		// 调用工具类存入数据
		ExamServiceImpl ExamService = new ExamServiceImpl();
		// 响应结果
		response.getWriter().print(ExamService.examAdd(exam) > 0 ? "OK":"NO");
	}
	/**
	 * 修改exam
	 * 
	 */
	
	public void updateExam(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				// 调用工具类的封装参数
				Exam exam = WebRequestUtil.parseObject(Exam.class, request);
				// 创建TeacherServiceImpl实例
				ExamServiceImpl ExamService = new ExamServiceImpl();
				// 判断  响应相应的结果
				response.getWriter().print(ExamService.examUpdate(exam) > 0 ? "OK" : "NO");		
				
	}
	
/**
 * 删除Seervlet
 * @param request
 * @param response
 * @throws ServletException
 * @throws IOException
 */
	public void deleteExam(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 获取请求删除的id
		
		String examId = request.getParameter("examID");
		 System.out.println(examId);
		// 用逗号分隔id数组
		String[] exa = examId.split(",");
		int row = 0;// 定义全局变量
		
		// 遍历id个数
		for (String sd : exa) {
			Exam exam = new Exam(Integer.valueOf(sd));
			row += BeanUtils.delete(exam);
			
		}
		// 判断是否成功
		if(row == exa.length) {
			response.getWriter().print("OK");
		}else if(row == 0) {
			response.getWriter().print("NO");
		}else {
			response.getWriter().print("NK");
		}
	}
	
}
