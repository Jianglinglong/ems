package com.six.ems.web.service.impl.users;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import com.alibaba.fastjson.JSON;
import com.six.ems.constant.UserConstant;
import com.six.ems.dao.impl.users.UserDAOImpl;
import com.six.ems.entity.Menu;
import com.six.ems.entity.MenuItem;
import com.six.ems.entity.Right;
import com.six.ems.entity.Student;
import com.six.ems.entity.Teacher;
import com.six.ems.entity.User;
import com.six.ems.entity.UserAndRole;
import com.six.ems.web.service.interfaces.users.UserService;

public class UserServiceImpl implements UserService {
	
	@Override
	public String[] login(String principle, String account, String password) {
		Integer userId = null;
		String userName = "";
		String[] userMessage = new String[2];
		if(principle.equals(UserConstant.TEACHER.getValue())) {
			Teacher tea = new Teacher(account,password);
			tea = new UserDAOImpl().teaLogin(tea);
			User user = new User();
			user = new UserDAOImpl().getUserIdBytea(tea);
			userId = user.getUserId();
			userName = tea.getTeaRealName();
			userMessage[0] = userId+"";
			userMessage[1] = userName;
			
		} else if(principle.equals(UserConstant.STUDENT.getValue())){
			Student stu = new Student(account,password);
			stu = new UserDAOImpl().stuLogin(stu);
			User user = new User();
			user = new UserDAOImpl().getUserIdBystu(stu);
			userId = user.getUserId();
			userName = stu.getStuRealName();
			userMessage[0] = userId+"";
			userMessage[1] = userName;
		}
		return userMessage;
	}

	@Override
	public String getMenuById(Integer userId) {
		List<Right> rightLists = new ArrayList<>();
		
		// 根据userId查找角色Id
		List<UserAndRole> userList = new UserDAOImpl().getRoleByUserId(userId);
		for(UserAndRole userAndRole : userList) {
			Integer roleId = userAndRole.getRoleId();
			// 根据角色Id查找权限Id
			Set<Integer> rightsIds = new UserDAOImpl().getRightIdByRoleId(roleId);
			for(Integer rightId : rightsIds) {
				// 根据权限Id查找权限
				List<Right> rightListByRightId = new UserDAOImpl().getRightListByRightId(rightId);				
				Right right = rightListByRightId.get(0);
				rightLists.add(right);
			}
		}
		return menuJson(rightLists);
	}
	
	/**
	 * 将权限集合转换为Json字符串
	 * @param rightLists
	 * @return
	 */
	private String menuJson(List<Right> rightLists) {
		// 创建菜单对象
		Menu mune = new Menu();
		// 创建菜单项
		List<MenuItem> menuItemsList = new ArrayList<>();
		
		// 创建主菜单项
		List<Right> parentMenu = new ArrayList<>();
		for(Right right : rightLists) {
			if(UserConstant.ROOT_MENU.getValue().equals(right.getParentId()+"")) {
				parentMenu.add(right);
			}
		}
		
		// 构建菜单项
		for(Right mainMenu : parentMenu) {
			// 创建MenuItem对象
			MenuItem menuItem = new MenuItem();
			menuItem.setMenuid(mainMenu.getRightId());
			menuItem.setMenuname(mainMenu.getRightName());
			
			// 创建子菜单项
			List<MenuItem> childMenuItemList = new ArrayList<>();
			
			for(Right childright : rightLists) {
				if(childright.getParentId() == mainMenu.getRightId()) {
					MenuItem childMenuItem = new MenuItem();
					childMenuItem.setMenuid(childright.getRightId());
					childMenuItem.setMenuname(childright.getRightName());
					childMenuItem.setUrl(childright.getRightUrl());
					
					childMenuItemList.add(childMenuItem);
				}
			}
			
			menuItem.setMenus(childMenuItemList);
			
			menuItemsList.add(menuItem);	
		}
		mune.setList(menuItemsList);
		
		return JSON.toJSONString(mune,true);
	}
	

}
