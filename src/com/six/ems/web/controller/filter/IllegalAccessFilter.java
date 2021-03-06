package com.six.ems.web.controller.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.ems.utils.BundleUtil;

/**
 * 非法访问过滤器
 */

public class IllegalAccessFilter implements Filter {

    /**
     * Default constructor. 
     */
    public IllegalAccessFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
		// 把请求和响应对象强制转换为Http的请求和响应对象
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		
		// 获取当前过滤的请求路径
		String uri = request.getRequestURI();
		// 获取配置的公用访问地址
		String[] commonUrls = BundleUtil.getValue("common_url").split(",");
		
		
		
		// 循环判断是否存在放行的公用访问地址
		if (commonUrls != null && commonUrls.length > 0) {
			for (String url : commonUrls) {
				if (uri.contains(url)) {
					chain.doFilter(request, response);
					// 清空非法访问的提示
					request.getSession().removeAttribute("message");
					return;
				}
			}
		} 
		
		///// 判断用户是否登录 ///////
		// 获取当前登录用户
		Object obj = request.getSession().getAttribute("username");
		
		if (obj == null) {
			// 没有登录回到登录界面
			request.getSession().setAttribute("message", "小伙太年轻，还想入侵网站.");
			// 重定向登录
			response.sendRedirect(request.getContextPath()+"/login.jsp");
		} else {
			// 没有登录回到登录界面
			request.getSession().removeAttribute("message");
			// 已经登录，直接放行
			chain.doFilter(request, response);
		}
		
		
	}
	
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
