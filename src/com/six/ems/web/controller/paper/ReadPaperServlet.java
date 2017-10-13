package com.six.ems.web.controller.paper;

import com.alibaba.fastjson.JSON;
import com.jdbc.util.tool.BeanUtils;
import com.six.ems.entity.Answer;
import com.six.ems.web.controller.base.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ReadPaperServlet extends BaseServlet {
    public String initReadPaper(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        return "/WEB-INF/jsp/teacher/readpaper.jsp";
    }
    public void getAnswerPapaers(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        List<Answer> answers = BeanUtils.query(Answer.class);
        Map<String,Object> rows = new HashMap<>();
        rows.put("total",answers.size());
        rows.put("rows",answers);
        response.getWriter().print(JSON.toJSONString(rows,true));
    }
}
