/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.group4.music.service;


/**
 *
 * @author Emi
 */
public class AudioPath {

    String context;

    public AudioPath(String servletContext) {
        this.context = servletContext;
    }
    

    private static final String UPLOAD_LOCATION = "com3014_group4_cw/";
    
    String absolutePathSystem = context;
    
    // getting index of letter c of com3014_group4_cw/
    int startIndexFolder = absolutePathSystem.indexOf(UPLOAD_LOCATION);
    
  
    /**
     * build the absolute path for the audio folder 
     * regardless of operating system: ../com3014_group4_cw/Music/AudioFile/
     * upload file to audio directory
     * @return 
     */
    public String getPathForFolder() {
        int endIndex = startIndexFolder + UPLOAD_LOCATION.length();
        String filePath = absolutePathSystem.substring(0, endIndex) + "AudioFiles/";
        return filePath;

    }
    
    /**
     * 
     * @param nameOfAudio from Database
     * @return the full path to create the file or access it
     */
    public String getAbsolutePath(String nameOfAudio){
        String absPath = getPathForFolder() + nameOfAudio;
        return absPath;
    }
    
   
}
