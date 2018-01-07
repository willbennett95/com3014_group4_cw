package com.group4.music.dao.impl;

/**
 *
 * @author Will
 */

import java.util.List;
import javax.sql.DataSource;
import com.group4.music.dao.UserDAO;
import com.group4.music.mapper.UserMapper;
import com.group4.music.model.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional

public class UserDAOImpl extends JdbcDaoSupport implements UserDAO {
    
    @Autowired
    public UserDAOImpl(DataSource ds) {
        this.setDataSource(ds);
    }
    
    @Override
    public Users findUser(String username) {
        String sql = "Select.u.Username,u.Password"//
                + "from Users u where u.Username = ? ";
        
        Object[] params = new Object[] {username};
        UserMapper um = new UserMapper();
        try {
            Users Users = this.getJdbcTemplate().queryForObject(sql, params, um);
            return Users;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }
    
    @Override
    public List<String> getUserRole(String username) {
        String sql = "Select r.User_Role "//
                + " from User_Role r where r.Username = ? ";
         
        Object[] params = new Object[] {username};
         
        List<String> role = this.getJdbcTemplate().queryForList(sql,params, String.class);
         
        return role;
    }
    
}
