package com.service;

import com.model.Tour;
import com.model.User;

import java.util.List;

public interface UserService {
    public List<User> queryAll(User user);
    public  int  add(User user);
    public  void  del(Integer id);
    public  User getById(Integer id);
    public  void  update(User user);
}
