package com.group4.music.config;

/**
 *
 * @author Will
 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import com.group4.music.authentication.DBAuthentication;

@Configuration
@EnableWebSecurity

public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    
    @Autowired
    DBAuthentication dbAuthentication;
    
    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder amb) throws Exception {
        
        amb.inMemoryAuthentication().withUser("user1").password("1234").roles("Users");
        amb.inMemoryAuthentication().withUser("admin1").password("1234").roles("Users, ADMIN");
        amb.userDetailsService(dbAuthentication);
    }
    
    @Override
    protected void configure(HttpSecurity http) throws Exception {
 
        http.csrf().disable();

        http.authorizeRequests().antMatchers("/", "/welcome", "/login", "/logout").permitAll();
 
        http.authorizeRequests().antMatchers("/userInfo").access("hasAnyRole('ROLE_USER', 'ROLE_ADMIN')");
 
        http.authorizeRequests().antMatchers("/admin").access("hasRole('ROLE_ADMIN')");
 
        http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403");
 
        http.authorizeRequests().and().formLogin()
                .loginProcessingUrl("/j_spring_security_check")
                .loginPage("/login")//
                .defaultSuccessUrl("/userInfo")
                .failureUrl("/login?error=true")
                .usernameParameter("username")
                .passwordParameter("password")
                .and().logout().logoutUrl("/logout").logoutSuccessUrl("/logoutSuccessful");
 
    }
    
}
