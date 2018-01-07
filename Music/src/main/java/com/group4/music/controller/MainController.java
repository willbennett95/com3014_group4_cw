package com.group4.music.controller;

/**
 *
 * @author Will
 */

import java.security.Principal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
 
    @RequestMapping(value = { "/", "/welcome" }, method = RequestMethod.GET)
    public String welcome(Model model) {
        model.addAttribute("title", "Welcome");
        model.addAttribute("message", "This is welcome page!");
        return "welcome";
    }
 
    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String admin(Model model) {
        return "admin";
    }
 
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model ) {
      
        return "login";
    }
 
    @RequestMapping(value = "/logoutSuccessful", method = RequestMethod.GET)
    public String logoutSuccessful(Model model) {
        model.addAttribute("title", "Logout");
        return "logoutSuccessful";
    }
 
    @RequestMapping(value = "/Users", method = RequestMethod.GET)
    public String Users(Model model, Principal principal) {
 
        String username = principal.getName();
 
        System.out.println("Username: "+ username);
 
        return "userPage";
    }
 
    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public String accessDenied(Model model, Principal principal) {
        
        if (principal != null) {
           model.addAttribute("Invalid Permissions");
        }
        return "403";
    }   
   
}
