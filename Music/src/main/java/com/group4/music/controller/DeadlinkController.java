/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
*/

package com.group4.music.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Dina
 */

@Controller
public class DeadlinkController {
     @RequestMapping(value = "/construction", method = RequestMethod.GET)
    public String deadlink() {
        return "link";
    }
    
}
