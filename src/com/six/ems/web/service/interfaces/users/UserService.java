package com.six.ems.web.service.interfaces.users;

public interface UserService {
	/**
	 * 登陆业务方法
	 */
	String[] login(String principle,String account,String password);
	
	/**
	 * 初始化菜单业务方法
	 */
	String getMenuById(Integer userId);
}
