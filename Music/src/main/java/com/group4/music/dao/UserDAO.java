package com.group4.music.dao;

import java.util.List;
import com.group4.music.model.Users;

import java.util.List;
import com.group4.music.model.Users;

/**
 *
 * @author Will
 */

public interface UserDAO {
    
    public Users findUser(String username);
    
    public List<String> getUserRole(String username);
    
}
