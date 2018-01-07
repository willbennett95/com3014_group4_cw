/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.group4.music.model;

import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Emi
 */
public class AudioFileModel {

    private MultipartFile audio;

    public MultipartFile getAudio() {
        return audio;
    }

    public void setAudio(MultipartFile audio) {
        this.audio = audio;
    }
}
