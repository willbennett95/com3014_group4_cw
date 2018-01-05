/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.group4.music.service;

import com.group4.music.model.AudioFileModel;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author Emi
 */
public class FileValidator implements Validator {
    
    @Override
    public boolean supports(Class<?> clazz) {
        return AudioFileModel.class.isAssignableFrom(clazz);
    }
 
    @Override
    public void validate(Object obj, Errors errors) {
        AudioFileModel file = (AudioFileModel) obj;
         
        if(file.getAudio()!=null){
            if (file.getAudio().getSize() == 0) {
                //use resource for error instead: missing.file= Please select a file/"missing.file"
                errors.rejectValue("file", "Please select a file.");
            }
        }
    }
}
