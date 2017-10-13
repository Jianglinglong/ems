package com.six.ems.web.service.impl.users;

import java.util.List;

import com.six.ems.dao.impl.users.AdminDaoImpl;
import com.six.ems.dao.interfaces.users.AdminDAO;
import com.six.ems.web.service.interfaces.users.AdminService;

public class AdminServiceImpl implements AdminService {

    private AdminDAO adminDAO = new AdminDaoImpl();
    public <T> boolean add(T t) {
        return adminDAO.add(t);
    }

    public <T> boolean update(T t) {
        return adminDAO.update(t);
    }

    public <T> boolean delete(T t) {
        return adminDAO.delete(t);
    }

    public <T> List<T> getTypeItems(Class<T> tClass) {
        return adminDAO.getTypes(tClass);
    }
}
