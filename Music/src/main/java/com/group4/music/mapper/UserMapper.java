package com.group4.music.mapper;

/**
 *
 * @author Will
 */

import java.sql.ResultSet;
import java.sql.SQLException;
import com.group4.music.model.Users;
import org.springframework.jdbc.core.RowMapper;

public class UserMapper implements RowMapper<Users> {
    
    @Override
    public Users mapRow(ResultSet rs, int rowNum) throws SQLException {
        String username = rs.getString("Username");
        String password = rs.getString("Password");
        
        return new Users(username, password);
    }
    
}
