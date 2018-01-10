/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.group4.music.service;

import com.group4.music.model.Audio;
import com.group4.music.model.User;
import com.group4.music.repository.AudioRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Emi
 */
@Service
public class AudioService {
    @Autowired
    private AudioRepository ar;
    
    public List<Audio> findSongsByUser(User user){
        return ar.findByUser(user);
    }
    
    public Audio findAudioById(Long id){
        return ar.findOne(id);
    }
    
}
