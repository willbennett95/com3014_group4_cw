package com.group4.music.service;

import com.group4.music.model.User;

public interface UserService {
    void save(User user);
    User findUserByUsername(String username);
}
