package com.group4.music.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Bogdan Vrusias
 */

public class User {
    
    private String name;
    private int id;

    List<User> users = new ArrayList<User>();

    public User() {
        
        User user1 = new User();
        user1.setName("John");
        user1.setId(1);
       
        users.add(user1);

        User user2 = new User();
        user2.setName("Jack");
        user2.setId(2);
        
        users.add(user2);

        User user3 = new User();
        user3.setName("Helen");
        user3.setId(3);
        
        
        users.add(user3);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    

    public User getUser(int id) {
        if (id >= 0 && id < users.size()) {
            return users.get(id);
        } else {
            return null;
        }
    }

    public List<User> getUsers() {
        return users;
    }
}
