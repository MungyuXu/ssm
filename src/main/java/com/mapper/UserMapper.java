package com.mapper;

import com.model.User;

public interface UserMapper {
    User queryByUserName(User user);
}
