package com.six.ems.web.controller.admin;

import com.alibaba.fastjson.JSON;
import com.six.ems.entity.RoleRight;
import com.six.ems.entity.Student;
import com.six.ems.entity.Teacher;
import com.six.ems.web.controller.base.BaseServlet;
import com.six.ems.web.service.impl.users.AdminServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

//@WebServlet(name = "admin.do")
public class AdminServlet extends BaseServlet {
   public String initManagerTeacher(HttpServletRequest request , HttpServletResponse response) throws ServletException,IOException{
       return "/WEB-INF/jsp/admin/mTeacher.jsp";
   }
   public void getAllUsers(HttpServletRequest request , HttpServletResponse response)throws ServletException,IOException{
       List<RoleRight> roleRights = new AdminServiceImpl().getTypeItems(RoleRight.class);
       Map<String,Object> rows = new HashMap<>();
       rows.put("rows",roleRights);
       response.getWriter().print(JSON.toJSONString(rows,true));
   }
}
