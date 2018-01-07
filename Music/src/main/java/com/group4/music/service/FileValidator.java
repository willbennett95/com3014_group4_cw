/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.group4.music.service;

import com.group4.music.model.AudioFileModel;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Emi
 */
@Component
public class FileValidator implements Validator {

    @Override
    public boolean supports(Class<?> clazz) {
        return AudioFileModel.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object obj, Errors errors) {
        AudioFileModel audiofile = (AudioFileModel) obj;
        MultipartFile file = audiofile.getAudio();
        if (file.isEmpty()) {
            errors.rejectValue("audio", "file.miss");
        }

        
    }
}
