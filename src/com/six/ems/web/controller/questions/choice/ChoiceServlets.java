package com.six.ems.web.controller.questions.choice;

import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.jdbc.util.tool.BeanUtils;
import com.six.ems.entity.Choice;
import com.six.ems.entity.Student;
import com.six.ems.utils.CollectionUtils;
import com.six.ems.utils.WebRequestUtil;
import com.six.ems.web.controller.base.BaseServlet;
import com.six.ems.web.service.impl.questions.ChoiceServiceImpl;
import com.six.ems.web.service.impl.users.QuestionServiceImpl;

/**
 * Servlet implementation class ChoiceServlet
 */
public class ChoiceServlets extends BaseServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChoiceServlets() {
        super();
        // TODO Auto-generated constructor stub
    }

    public String initChoice(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		return "/WEB-INF/jsp/questions/choice.jsp";

	}
    public void listChoice(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Choice> choice = new QuestionServiceImpl().getChoice();
		Map<String , Collection<?>> json = new HashMap<>();
		json.put("rows", choice);
		String jsonString = JSON.toJSONString(json, true);
		//System.out.println(jsonString);
		response.getWriter().print(jsonString);
	}

    
    public void jsonChoice(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	List<Choice> choiceList = new ChoiceServiceImpl().getAllChoice();
    	
    	response.getWriter().print(CollectionUtils.creatDataGritJson(choiceList));
    	
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //删除
	public void deleteChoice(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("111111:"+request.getParameter("choiceId"));
		String choiceId = request.getParameter("choiceId");
		
		// 用逗号分隔id数组
				String[] cho = choiceId.split(",");
				int row = 0;// 定义全局变量
				// 遍历id个数
				for (String ch : cho) {
					Choice choice = new Choice(Integer.valueOf(ch));
					row += BeanUtils.delete(choice);
				}
				// 判断是否成功
				if(row == cho.length) {
					response.getWriter().print("OK");
				}else if(row == 0) {
					response.getWriter().print("NO");
				}else {
					response.getWriter().print("NK");
				}
			}
		
	//添加
	public void addChoice(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 调用工具类出入对象封装数据---注意(表单名必须与Choice对象的属性相同)
		Choice choice = WebRequestUtil.parseObject(Choice.class, request);
		// 调用工具类存入数据
		int row = BeanUtils.persist(choice);
		// 响应结果
		response.getWriter().print(row > 0 ? "OK":"NO");
	}
	//修改
	public void updateChoice(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 调用工具类的封装参数
		Choice choice = WebRequestUtil.parseObject(Choice.class, request);
		// 调用工具类的update方法更新数据
		int update = BeanUtils.update(choice);
		// 判断  响应相应的结果
		if (update > 0) {
			response.getWriter().print("OK");
		}else{
			response.getWriter().print("NO");
		}
	}
	

}
