package com.service;

import com.mapper.UserMapper;
import com.model.Tour;
import com.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public List<User> queryAll(User user) {
        return this.userMapper.queryAll(user);
    }

    @Override
    public void add(User user) {

        this.userMapper.add(user);
    }

    @Override
    public void del(Integer id) {
        this.userMapper.del(id);
    }

    @Override
    public User getById(Integer id) {
        return this.userMapper.getById(id);
    }

    @Override
    public void update(User user) {
        this.userMapper.update(user);

    }
}
