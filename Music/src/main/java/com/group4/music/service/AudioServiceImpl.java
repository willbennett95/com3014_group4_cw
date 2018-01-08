/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.group4.music.service;

import com.group4.music.dao.AudioDAO;
import com.group4.music.model.Audio;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Emi
 */

@Service("audioService")
@Transactional
public class AudioServiceImpl implements AudioService {

    @Autowired
    private AudioDAO dao;
    
    
    @Override
    public void saveOrUpdateAudio(Audio audio) {
        dao.saveOrUpdateAudio(audio);
    }

    @Override
    public List<Audio> listAudios() {
        return dao.listAudios();

    }

    @Override
    public List<Audio> listAudiosByUserId(int userId) {
        return dao.listAudiosByUserId(userId);
    }

    @Override
    public Audio getAudioById(int id) {
        return dao.getAudioById(id);
    }

    @Override
    public void removeAudio(int id) {
        dao.removeAudio(id);
    }

}
