package com.service;

import com.mapper.UserMapper;
import com.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private UserMapper userMapper;

    public int login(User user) {
        int flag = 0;
        User u = userMapper.queryByUserName(user);
        if (u == null) flag = 1;
        else if (!u.getPassword().equals(user.getPassword())) {
            flag = 2;
        }
        return flag;
    }
}
