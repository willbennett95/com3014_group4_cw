/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.group4.music.controller;

import com.group4.music.model.AudioFileModel;
import com.group4.music.validator.AudioPath;
import com.group4.music.validator.FileValidator;
import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.validation.Valid;
import org.apache.tika.Tika;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Emi
 */
@Controller
@RequestMapping("/upload")
public class AudioUploadController {

    @Autowired
    FileValidator fileValidator;
    // used for getting the path of the file, wont need later
    @Autowired
    ServletContext context;
    
    @Autowired
    AudioPath audioPath;

    private static final String UPLOAD_LOCATION = "com3014_group4_cw/";

    //validating the audio model (has to be the name of the parameter below where @Valid is used
    @InitBinder("audioFileModel")
    protected void initBinder(WebDataBinder binder) {
        binder.setValidator(fileValidator);
    }

    @RequestMapping(value = "/audio", method = RequestMethod.GET)
    public String getAudioUploadPage(ModelMap model) {
        AudioFileModel maudio = new AudioFileModel();
        model.addAttribute("audioFileModel", maudio);
        return "audioupload";
    }

    @RequestMapping(value = "/audio", method = RequestMethod.POST)
    public String audioFileUpload(@Valid AudioFileModel fileModel, BindingResult result, ModelMap model) throws IOException {

        if (result.hasErrors()) {
            System.out.println("validation errors");
            return "audioupload";
        } else {
            
            String absolutePathSystem = context.getRealPath("");
            audioPath = new AudioPath(absolutePathSystem);
            MultipartFile multipartFile = fileModel.getAudio();
            // upload file to audio directory
            multipartFile.transferTo(new File(audioPath.getPathForFolder()+multipartFile.getOriginalFilename()));
            File file = new File(audioPath.getPathForFolder()+multipartFile.getOriginalFilename());
            System.out.println("file.getPath(): " + file.getPath());
            System.out.println("file.getAbsolutePath(): " + file.getAbsolutePath());
            
      
            String fileName = multipartFile.getOriginalFilename();
            model.addAttribute("audioName", fileName);
            return "success";
        }
    }

}
