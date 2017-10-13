package com.six.ems.web.controller.admin;

import com.alibaba.fastjson.JSON;
import com.jdbc.util.tool.BeanUtils;
import com.six.ems.entity.Role;
import com.six.ems.web.controller.base.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class RoleServlet extends BaseServlet {
  public String initRole(HttpServletRequest request , HttpServletResponse response)throws ServletException,IOException{
      return "/WEB-INF/jsp/admin/role.jsp";
  }
  public void getAllRoles(HttpServletRequest request ,HttpServletResponse response)throws ServletException,IOException{
      List<Role> roles = BeanUtils.query(Role.class);
      Map<String,Object> rows = new HashMap<>();
      rows.put("total",roles.size());
      rows.put("rows",roles);
      response.getWriter().print(JSON.toJSONString(rows,true));
  }
}
