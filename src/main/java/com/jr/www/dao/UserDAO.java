package com.jr.www.dao;

import java.util.List;

import com.jr.www.model.User;

public interface UserDAO  {
	
    void addUser(User user);
    void updateUser(User user);
    void removeUser(User user);
    List<User> listUsers(int pageNumber, int perPage, String criteria);
    User getById(int id);
    public int getCurrentDBsize();
}
