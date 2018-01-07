/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.group4.music.controller;

import com.group4.music.model.AudioFileModel;
import com.group4.music.service.FileValidator;
import java.io.File;
import java.io.IOException;
import javax.servlet.ServletContext;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Emi
 */
public class AudioUploadController {
    
    @Autowired
    FileValidator fileValidator;
    // used for getting the path of the file, wont need later
    @Autowired
<<<<<<< HEAD
    ServletContext context;
    
    private static String UPLOAD_LOCATION="/Users/Emi/Desktop/";

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
            
            //fileValidator.validate(file, model.);
            System.out.println("Fetching file");
            MultipartFile multipartFile = fileModel.getAudio();

            //Now do something with file...
            //should save to database
            //this copies it to another directory after its been uploaded
            //String uploadPath = context.getRealPath("") + File.separator + "temp" + File.separator;
            FileCopyUtils.copy(fileModel.getAudio().getBytes(), new File(UPLOAD_LOCATION + fileModel.getAudio().getOriginalFilename()));

=======
    ServletContext context; 
     
    @InitBinder("fileBucket")
    protected void initBinderFileBucket(WebDataBinder binder) {
       binder.setValidator(fileValidator);
    }
    
    @RequestMapping(value = "/fileUpload", method = RequestMethod.GET)
   public String getAudioUploadPage(ModelMap model) {
      AudioFileModel audio = new AudioFileModel();
      model.addAttribute("audioFile", audio);
      return "audioupload";
   }
   
   @RequestMapping(value="/singleUpload", method = RequestMethod.POST)
    public String audioFileUpload(@Valid  AudioFileModel audio, BindingResult result, ModelMap model) throws IOException {
 
        if (result.hasErrors()) {
            System.out.println("validation errors");
            return "audioupload";
        } else {            
            System.out.println("Fetching file");
            MultipartFile multipartFile = audio.getAudio();
 
            //Now do something with file...
            //should save to database
            String uploadPath = context.getRealPath("") + File.separator + "temp" + File.separator;
            FileCopyUtils.copy(audio.getAudio().getBytes(), new File(uploadPath + audio.getAudio().getOriginalFilename()));
             
>>>>>>> parent of 101453f... Merge branch 'File-upload'
            String fileName = multipartFile.getOriginalFilename();
            model.addAttribute("audioName", fileName);
            return "success";
        }
    }
 
    
    
}
