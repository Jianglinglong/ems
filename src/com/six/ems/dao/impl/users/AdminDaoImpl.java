package com.six.ems.dao.impl.users;

import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;

import com.jdbc.util.annotation.Column;
import com.jdbc.util.annotation.PK;
import com.jdbc.util.compoent.LikeItem;
import com.jdbc.util.tool.BeanUtils;
import com.six.ems.dao.interfaces.users.AdminDAO;
import com.six.ems.entity.Right;
import com.six.ems.entity.Role;
import com.six.ems.entity.Student;
import com.six.ems.utils.CollectionUtils;

public class AdminDaoImpl implements AdminDAO {

    public <T> boolean add(T t) {
        return BeanUtils.persist(t)>0;
    }

    @Override
    public <T> boolean update(T t) {
        return BeanUtils.update(t)>0;
    }

    @Override
    public <T> boolean delete(T t) {
        return BeanUtils.delete(t)>0;
    }

    @Override
    public <T> List<T> getTypes(Class<T> tClass) {
        return BeanUtils.query(tClass);
    }

	public Role getRoleByID(Integer roleID) {
		Map<String,LikeItem> condition = CollectionUtils.getCondition();
		condition.put("role_id", new LikeItem(roleID));
		List<Role> select = BeanUtils.query(Role.class, condition);
		return CollectionUtils.isNotBlank(select)?select.get(0):null;
	}

	public Right getRightByID(Integer rightID) {
        Map<String, LikeItem> condition = CollectionUtils.getCondition();
        condition.put("right_id",new LikeItem(rightID));
        List<Right> query = BeanUtils.query(Right.class, condition);
        return CollectionUtils.isNotBlank(query)?query.get(0):null;
	}

    @Override
    public <T> T getTypeByID(Class<T> tClass, Integer typeID) {
        Map<String, LikeItem> condition = CollectionUtils.getCondition();
        Method[] tClassDeclaredMethods = tClass.getDeclaredMethods();
        String idName = "";
        for (Method method : tClassDeclaredMethods){
            PK annotation = method.getAnnotation(PK.class);
            if (annotation != null) {
                Column column = method.getAnnotation(Column.class);
                if (column != null) {
                    idName = column.value();
                }else {
                    idName = method.getName();
                    if(idName.startsWith("is")){
                        idName = idName.substring(2);
                    }else {
                        idName = idName.substring(3);
                    }
                }
                break;
            }

        }
        if (idName.equals("")){
            return null;
        }
        condition.put(idName, new LikeItem(typeID));
        List<T> query = BeanUtils.query(tClass, condition);
        return CollectionUtils.isNotBlank(query)?query.get(0):null;
    }
    public static void main(String[] args){
        new AdminDaoImpl().getTypeByID(Student.class,1);
    }
}
