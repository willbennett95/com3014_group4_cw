package com.group4.music.service;

import com.group4.music.model.User;
import com.group4.music.repository.RoleRepository;
import com.group4.music.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import java.util.HashSet;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository ur;
    @Autowired
    private RoleRepository rr;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void save(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(new HashSet<>(rr.findAll()));
        ur.save(user);
    }

    @Override
    public User findUserByUsername(String username) {
        return ur.findUserByUsername(username);
    }
}
