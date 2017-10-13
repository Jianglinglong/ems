package com.six.ems.web.controller.paper;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.ems.entity.Blank;
import com.six.ems.entity.Choice;
import com.six.ems.entity.Course;
import com.six.ems.entity.Judge;
import com.six.ems.entity.PaperRule;
import com.six.ems.entity.Subjective;
import com.six.ems.web.controller.base.BaseServlet;
import com.six.ems.web.service.impl.course.CourseServiceImpl;
import com.six.ems.web.service.impl.paper.PaperRuleServiceImpl;
import com.six.ems.web.service.impl.questions.ChoiceServiceImpl;

/**
 * Servlet implementation class PaperServlet
 */
public class PaperServlet extends BaseServlet {
	
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaperServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * 初始化手动组卷
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public String initHandPaper(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Course> query = new CourseServiceImpl().courseQuery();
		request.setAttribute("courses", query);
		
		return "/WEB-INF/jsp/paper/handPaper.jsp";
	}
	/**
	 * 初始化自动组卷
	 */
	public String initAutoPaper(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Course> query = new CourseServiceImpl().courseQuery();
		request.setAttribute("courses", query);
		
		return "/WEB-INF/jsp/paper/autoPaper.jsp";
	}
	
	/**
	 * 获取单选择题
	 */
	public String getChoice(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Choice> allChoice = new ChoiceServiceImpl().getAllChoice();
		
		request.setAttribute("allChoice", allChoice);
		
		return "/WEB-INF/jsp/paper/listPaper.jsp";
		
	}
	
	/**
	 * 获取多选择题
	 */
	public String getMultiple(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Choice> allMultiple = null;
		
		request.setAttribute("allMultiple", allMultiple);
		
		return "/WEB-INF/jsp/paper/listPaper.jsp";
		
	}
	
	/**
	 * 获取填空题
	 */
	public void getBlank(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Blank> allBlank = null;
		
		request.setAttribute("allBlank", allBlank);
		
		// return "/WEB-INF/jsp/paper/listPaper.jsp";
	}
	
	
	/**
	 * 获取判断题
	 */
	public String getJudge(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Judge> allJudge = null;
		
		request.setAttribute("allJudge", allJudge);
		
		return "/WEB-INF/jsp/paper/listPaper.jsp";
		
	}
	
	
	/**
	 * 获取主观题
	 */
	public String getSubjective(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Subjective> allSubjective = null;
		
		request.setAttribute("allSubjective", allSubjective);
		
		return "/WEB-INF/jsp/paper/listPaper.jsp";
		
	}
	
	
	public static void main(String[] args) {
		short s1 = 1; s1 = (short) (s1 + 1); 
	}
	

	/**
	 * 将手动组卷内容存储到数据库
	 */
	public void saveHandPaper(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 获取单选题数据
		String choiceIds = request.getParameter("choiceIds");
		// 获取单选题总分数
		String choiceIdsScore = request.getParameter("choiceIdsScore");
		// 获取单选题总数
		String choiceIdsNum = request.getParameter("choiceIdsNum");	
		
		// 获取多选题数据
		String multipleId = request.getParameter("multipleId");
		// 获取多选题总分数
		String multipleIdsScore = request.getParameter("multipleIdsScore");
		// 获取多选题总数
		String multipleIdsNum = request.getParameter("multipleIdsNum");
		
		// 获取判断题数据
		String blankIds = request.getParameter("blankIds");
		// 获取判断题总分数
		String blankIdsScore = request.getParameter("blankIdsScore");
		// 获取判断题总数
		String blankIdsNum = request.getParameter("blankIdsNum");
		
		// 获取填空题数据
		String judgeIds = request.getParameter("judgeIds");
		// 获取填空题总分数
		String judgeIdsScore = request.getParameter("judgeIdsScore");
		// 获取填空题总数
		String judgeIdsNum = request.getParameter("judgeIdsNum");
		
		// 获取主观题数据
		String subjectiveIds = request.getParameter("subjectiveIds");
		// 获取主观题总分数
		String subjectiveIdsScore = request.getParameter("subjectiveIdsScore");
		// 获取主观题总数
		String subjectiveIdsNum = request.getParameter("subjectiveIdsNum");
		
		// 获取班级id
		String courseId = request.getParameter("courseId");
		// 获取组卷类型
		String ruleType = request.getParameter("ruleType");
		
		PaperRule paperRule = new PaperRule();
		paperRule.setSingleChoiceChecked(choiceIds);
		paperRule.setSingleScore(new BigDecimal(choiceIdsScore));
		paperRule.setSingleChoiceNum(Integer.valueOf(choiceIdsNum));
		
		paperRule.setMulChoiceChecked(multipleId);
		paperRule.setMulScore(new BigDecimal(multipleIdsScore));
		paperRule.setMulChoiceNum(Integer.valueOf(multipleIdsNum));
		
		paperRule.setFileBlankChoiceChecked(blankIds);
		paperRule.setFileBlankScore(new BigDecimal(blankIdsScore));
		paperRule.setFileBlankChoiceNum(Integer.valueOf(blankIdsNum));
		
		paperRule.setJudgeChoiceChecked(judgeIds);
		paperRule.setJudgeScore(new BigDecimal(judgeIdsScore));
		paperRule.setJudgeChoiceNum(Integer.valueOf(judgeIdsNum));
		
		paperRule.setSubChoiceChecked(subjectiveIds);
		paperRule.setSingleScore(new BigDecimal(subjectiveIdsScore));
		paperRule.setSubChoiceNum(Integer.valueOf(subjectiveIdsNum));
		
		paperRule.setCourseID(Integer.valueOf(courseId));
		paperRule.setRuleType(Integer.valueOf(ruleType));
		
		int row = new PaperRuleServiceImpl().addPaperRule(paperRule);
		response.getWriter().print(row != 0 ? "OK" : "NO");
		
	}
	
	/**
	 * 将自动组信息提交
	 */
	
	public void saveAutoPaper(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String courseId = request.getParameter("courseId");
		String ruleType = request.getParameter("ruleType");
		
		String choiceIdsNum = request.getParameter("choiceIdsNum");
		String choiceIdsScore = request.getParameter("choiceIdsScore");
		String multipleIdsNum = request.getParameter("multipleIdsNum");
		String multipleIdsScore = request.getParameter("multipleIdsScore");
		String blankIdsNum = request.getParameter("blankIdsNum");
		String blankIdsScore = request.getParameter("blankIdsScore");
		String judgeIdsNum = request.getParameter("judgeIdsNum");
		String judgeIdsScore = request.getParameter("judgeIdsScore");
		String subjectiveIdsNum = request.getParameter("subjectiveIdsNum");
		String subjectiveIdsScore = request.getParameter("subjectiveIdsScore");
		
		String choiceCk = new PaperRuleServiceImpl().getQuestionsToPaper(choiceIdsNum, choiceIdsScore, "choice");
		String multipleCk = new PaperRuleServiceImpl().getQuestionsToPaper(multipleIdsNum, multipleIdsScore, "multiple");
		String blankCk = new PaperRuleServiceImpl().getQuestionsToPaper(blankIdsNum, blankIdsScore, "blank");
		String judgeCk = new PaperRuleServiceImpl().getQuestionsToPaper(judgeIdsNum, judgeIdsScore, "judge");
		String subjectiveCk = new PaperRuleServiceImpl().getQuestionsToPaper(subjectiveIdsNum, subjectiveIdsScore, "subjective");
		
		PaperRule paperRule = new PaperRule();
		paperRule.setCourseID(Integer.valueOf(courseId));
		paperRule.setRuleType(Integer.valueOf(ruleType));
		
		paperRule.setSingleChoiceChecked(choiceCk);
		paperRule.setSingleScore(new BigDecimal(choiceIdsScore));
		paperRule.setSingleChoiceNum(Integer.valueOf(choiceIdsNum));
		
		paperRule.setMulChoiceChecked(multipleCk);
		paperRule.setMulScore(new BigDecimal(multipleIdsScore));
		paperRule.setMulChoiceNum(Integer.valueOf(multipleIdsNum));
		
		paperRule.setFileBlankChoiceChecked(blankCk);
		paperRule.setFileBlankScore(new BigDecimal(blankIdsScore));
		paperRule.setFileBlankChoiceNum(Integer.valueOf(blankIdsNum));
		
		paperRule.setJudgeChoiceChecked(judgeCk);
		paperRule.setJudgeScore(new BigDecimal(judgeIdsScore));
		paperRule.setJudgeChoiceNum(Integer.valueOf(judgeIdsNum));
		
		paperRule.setSubChoiceChecked(subjectiveCk);
		paperRule.setSingleScore(new BigDecimal(subjectiveIdsScore));
		paperRule.setSubChoiceNum(Integer.valueOf(subjectiveIdsNum));
		
		int row = new PaperRuleServiceImpl().addPaperRule(paperRule);
		response.getWriter().print(row != 0 ? "OK" : "NO");
	}
	
}
