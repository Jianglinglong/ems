package com.six.ems.dao.interfaces.users;

import java.util.List;

import com.six.ems.entity.Right;
import com.six.ems.entity.Role;

public interface AdminDAO {
    <T> boolean add(T t);
    <T> boolean update(T t);
    <T> boolean delete(T t);
    <T> List<T> getTypes(Class<T> tClass);
	Role getRoleByID(Integer roleID);
	Right getRightByID(Integer rightID);
	<T> T getTypeByID(Class<T> tClass, Integer typeID);
}