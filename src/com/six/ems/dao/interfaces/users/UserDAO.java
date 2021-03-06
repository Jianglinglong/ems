package com.six.ems.dao.interfaces.users;

import java.util.List;
import java.util.Set;

import com.six.ems.entity.Right;
import com.six.ems.entity.Student;
import com.six.ems.entity.Teacher;
import com.six.ems.entity.User;
import com.six.ems.entity.UserAndRole;

public interface UserDAO {
    /**
     * 教师登陆方法
     */
    Teacher teaLogin(Teacher tea);

    /**
     * 学生登陆方法
     */
    Student stuLogin(Student stu);
    
    /**
     * 根据教师id获取教师姓名
     */
   //  String getTeaName(Integer teaId);
    
    /**
     * 根据学生id获取学生姓名
     */
   //  String getStuName(Integer )
    
    /**
     * 根据教师实体对象获取用户对象
     */
    User getUserIdBytea(Teacher tea);

    /**
     * 根据学生实体对象获取用户对象
     */
    User getUserIdBystu(Student stu);

    /**
     * 根据用户id查找角色对象集合
     */
    List<UserAndRole> getRoleByUserId(Integer userId);

    /**
     * 根据角色id对象查找权限id
     */
    Set<Integer> getRightIdByRoleId(Integer roleId);

    /**
     * 根据权限id查找权限集合
     */
    List<Right> getRightListByRightId(Integer rightId);
}
