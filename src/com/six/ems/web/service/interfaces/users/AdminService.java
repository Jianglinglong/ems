package com.six.ems.web.service.interfaces.users;

import java.util.List;

public interface AdminService {
    <T> boolean add(T t );
    <T> boolean update(T t );
    <T> boolean delete(T t );
    <T>List<T> getTypeItems(Class<T> tClass);
}
