package com.group4.music.authentication;

import java.util.ArrayList;
import java.util.List;
import com.group4.music.dao.UserDAO;
import com.group4.music.model.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 *
 * @author Will
 */
@Service
public class DBAuthentication implements UserDetailsService {
    
    @Autowired
    private UserDAO userDAO;
    
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Users users = userDAO.findUser(username);
        System.out.println("User=" + users);
        
        if (users == null) {
            throw new UsernameNotFoundException("User" + username + " was not found");
        }
        
        List<String> roles = userDAO.getUserRole(username);
        
        List<GrantedAuthority> gl = new ArrayList<GrantedAuthority>();
        if(roles!=null) {
            for(String role : roles) {        
            GrantedAuthority ga = new SimpleGrantedAuthority("ROLE_" + role);
            gl.add(ga);
            }
        }
        
        UserDetails ud = (UserDetails) new User(users.getUsername(), users.getPassword(), gl);
        
        return ud;
    }
    
}
