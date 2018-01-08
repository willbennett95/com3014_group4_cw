/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.group4.music.service;

import com.group4.music.model.Audio;
import java.util.List;

/**
 *
 * @author Emi
 */
public interface AudioService {

    public void saveOrUpdateAudio(Audio audio);

    public List<Audio> listAudios();
    
    public List<Audio> listAudiosByUserId(int userId);

    public Audio getAudioById(int id);

    public void removeAudio(int id);
}
