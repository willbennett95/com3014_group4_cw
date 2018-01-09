/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.group4.music.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * should one more for user id or change the user name to id
 * @author Emi
 */
@Entity
@Table(name="audio")
public class Audio {
    
    
    @Id 
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Long id;
    
    private String title;
    
    private String artist;

    // used for getting the absolute path using AudioPath
    private String nameOfAudioFile;
    
    @ManyToOne(optional = false)
    @JoinColumn(name = "USER_ID")
    private User user;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getArtist() {
        return artist;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getNameOfAudioFile() {
        return nameOfAudioFile;
    }

    public void setNameOfAudioFile(String nameOfAudioFile) {
        this.nameOfAudioFile = nameOfAudioFile;
    }
    
    
    
    
    
    
}
