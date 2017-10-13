package com.six.ems.dao.impl.users;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.jdbc.util.compoent.LikeItem;
import com.jdbc.util.tool.BeanUtils;
import com.six.ems.dao.interfaces.users.UserDAO;
import com.six.ems.entity.Right;
import com.six.ems.entity.RoleRight;
import com.six.ems.entity.Student;
import com.six.ems.entity.Teacher;
import com.six.ems.entity.User;
import com.six.ems.entity.UserAndRole;
import com.six.ems.utils.CollectionUtils;

public class UserDAOImpl implements UserDAO {

	@Override
	public Teacher teaLogin(Teacher tea) {
		Map<String, LikeItem> condition = new HashMap<String, LikeItem>();
		condition.put("tea_account", new LikeItem(tea.getTeaAccount()));
		condition.put("tea_password", new LikeItem(tea.getTeaPassword()));
		
		List<Teacher> query = BeanUtils.query(Teacher.class, condition);
		return CollectionUtils.isNotBlank(query) ? query.get(0) : null;
	}

	@Override
	public Student stuLogin(Student stu) {
		Map<String, LikeItem> condition = new HashMap<String, LikeItem>();
		condition.put("stu_account", new LikeItem(stu.getStuAccount()));
		condition.put("stu_password", new LikeItem(stu.getStuPassword()));
		
		 List<Student> query = BeanUtils.query(Student.class, condition);
		return CollectionUtils.isNotBlank(query) ? query.get(0) : null;
	}

	@Override
	public User getUserIdBytea(Teacher tea) {
		Map<String, LikeItem> condition = new HashMap<String, LikeItem>();
		condition.put("tea_id", new LikeItem(tea.getTeaId()));
		
		List<User> query = BeanUtils.query(User.class, condition);
		return CollectionUtils.isNotBlank(query) ? query.get(0) : null;
	}

	@Override
	public User getUserIdBystu(Student stu) {
		Map<String, LikeItem> condition = new HashMap<String, LikeItem>();
		condition.put("stu_id", new LikeItem(stu.getStuId()));
		
		List<User> query = BeanUtils.query(User.class, condition);
		return CollectionUtils.isNotBlank(query) ? query.get(0) : null;
	}

	@Override
	public List<UserAndRole> getRoleByUserId(Integer userId) {
		Map<String , LikeItem> condition = new HashMap<>();
		condition.put("user_id", new LikeItem(userId));
		List<UserAndRole> query = BeanUtils.query(UserAndRole.class, condition);
		
		return CollectionUtils.isNotBlank(query) ? query : null;
	}

	@Override
	public Set<Integer> getRightIdByRoleId(Integer roleId) {
		Map<String , LikeItem> condition = new HashMap<>();
		condition.put("role_id", new LikeItem(roleId));
		List<RoleRight> query = BeanUtils.query(RoleRight.class, condition);
		Set<Integer> rightIds = new HashSet<>();
		if(CollectionUtils.isNotBlank(query)) {
			for(RoleRight roleRight : query) {
				rightIds.add(roleRight.getRightId());
			}
		}
		
		
		return CollectionUtils.isNotBlank(rightIds) ? rightIds : null;
	}

	@Override
	public List<Right> getRightListByRightId(Integer rightId) {
		Map<String, LikeItem> condition = new HashMap<>();
		condition.put("right_id", new LikeItem(rightId));
		
		List<Right> query = BeanUtils.query(Right.class, condition);
		
		
		return CollectionUtils.isNotBlank(query) ? query : null;
	}
	
	

}
