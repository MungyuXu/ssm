package com.mapper;

import com.model.Tour;
import com.model.User;

import java.util.List;

public interface UserMapper {
    User queryByUserName(User user);

    public List<User> queryAll(User user);
    public  void  add(User user);
    public void del(Integer id);
    public  User getById(Integer id);
    public void  update(User user);
}
