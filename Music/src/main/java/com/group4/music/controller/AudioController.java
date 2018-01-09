/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.group4.music.controller;

import com.group4.music.model.Audio;
import com.group4.music.repository.AudioRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Emi
 */

@Controller
public class AudioController {
    
     @Autowired
     AudioRepository audioRepository;
     
    /**
     * This method will list all existing songs from every user. used in collection page
     */
    @RequestMapping(value = {"/songs"}, method = RequestMethod.GET)
    public String listUsers(ModelMap model) {
 
        List<Audio> audios = audioRepository.findAll();
        model.addAttribute("songs", audios);
        return "songlistpage";
    }
    
    
    
    
     
 
}

