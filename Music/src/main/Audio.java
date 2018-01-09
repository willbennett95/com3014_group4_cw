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
import javax.persistence.Table;

/**
 * should one more for user id or change the user name to id
 * @author Emi
 */
@Entity
@Table(name="AUDIO")
public class Audio {
    
    
    @Id 
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer id;
    private String title;
    private String artist;
   
    
    //@ManyToOne(optional = false)
    //@JoinColumn(name = "USER_ID")
    private int user;
    // used for getting the absolute path using AudioPath
    private String nameOfAudioFile;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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

    

    public int getUser() {
        return user;
    }

    public void setUser(int user) {
        this.user = user;
    }

    public String getNameOfAudioFile() {
        return nameOfAudioFile;
    }

    public void setNameOfAudioFile(String nameOfAudioFile) {
        this.nameOfAudioFile = nameOfAudioFile;
    }
    
    
    
    
    
    
}
