/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.group4.music.validator;

import com.group4.music.model.AudioFileModel;
import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.tika.Tika;
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

    public static final long TWENTY_MB_IN_BYTES = 20971520;
    Tika tika= new Tika();
          
    @Override
    public boolean supports(Class<?> clazz) {
        return AudioFileModel.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object obj, Errors errors) {
        AudioFileModel audiofile = (AudioFileModel) obj;
        MultipartFile file = audiofile.getAudio();
        if (file.isEmpty()) {
            errors.rejectValue("audio", "file.missing");
        } 

        
        try {
            // get the media type of the file regardless of the file extension
            String type = tika.detect(file.getInputStream());
            System.out.println("file type: " + type);
            if (!type.startsWith("audio")) {
                System.out.println("It is not audio file");
                errors.rejectValue("audio", "file.type");
            }

        } catch (IllegalStateException ex) {
            System.out.println("IllegalStateException emi ");
        } catch (IOException ex) {
            System.out.println("IllegalStateException io ");
        }
        
        if(file.getSize()>TWENTY_MB_IN_BYTES){
            errors.rejectValue("audio", "file.size");
        }

    }

}
