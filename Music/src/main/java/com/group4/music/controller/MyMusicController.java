/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.group4.music.controller;

import com.group4.music.dao.User;
import com.group4.music.model.Audio;
import com.group4.music.model.AudioFileModel;
import com.group4.music.service.AudioService;
import com.group4.music.validator.AudioPath;
import com.group4.music.validator.FileValidator;
import java.io.File;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletContext;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Emi
 */
@Controller
@RequestMapping("/mymusic")
public class MyMusicController {

    @Autowired
    FileValidator fileValidator;
    // used for getting the path of the file, wont need later
    @Autowired
    ServletContext context;

    @Autowired
    AudioPath audioPath;

    // service
    @Autowired
    User user;

    @Autowired
    AudioService audioService;

    private static final String UPLOAD_LOCATION = "com3014_group4_cw/";

    //validating the audio model (has to be the name of the parameter below where @Valid is used
    @InitBinder("audioFileModel")
    protected void initBinder(WebDataBinder binder) {
        binder.setValidator(fileValidator);
    }

    /**
     * This method will list all songs for current user.
     *
     * @param userId
     * @param model
     * @return
     */
    @RequestMapping(value = {"/list-{userId}"}, method = RequestMethod.GET)
    public String listSongsOfUser(@PathVariable int userId, ModelMap model) {

        List<Audio> songs = audioService.listAudiosByUserId(userId);
        model.addAttribute("songsUser", songs);
        return "mymusic";
    }

    @RequestMapping(value = "/new-audio-{userId}", method = RequestMethod.GET)
    public String getAudioUploadPage(@PathVariable int userID, ModelMap model) {
        // for actual audio file
        AudioFileModel a = new AudioFileModel();
        model.addAttribute("audioFileModel", a);
        // for fields: title, artist, album..
        Audio audio = new Audio();
        model.addAttribute("newaudiodetails", audio);

        return "audioupload";
    }

    @RequestMapping(value = "/new-audio-{userId}", method = RequestMethod.POST)
    public String audioFileUpload(@Valid AudioFileModel fileModel, @Valid Audio audioModel, BindingResult result, ModelMap model, @PathVariable int userId) throws IOException {

        // if the fields have errors return page with error messages
        if (result.hasErrors()) {
            System.out.println("validation errors");
            return "audioupload";

        } else {

            //User user = userService.findById(userId);
            //model.addAttribute("user", user);
            audioPath = new AudioPath(context.getRealPath(""));

            // get the chosen file
            MultipartFile multipartFile = fileModel.getAudio();

            // upload file to audio directory
            multipartFile.transferTo(new File(audioPath.getPathForFolder() + multipartFile.getOriginalFilename()));

            // save to database
            audioModel.setUser(userId);
            audioService.saveOrUpdateAudio(audioModel);
            // to display the file after its uploaded with its details
            model.addAttribute("audioSavedAtr", audioModel);

            // back to same page
            // have to edit it so the form disappears
            return "redirect:/new-audio-" + userId;
        }
    }

    @RequestMapping(value = {"/delete-audio-{userId}-{aId}"}, method = RequestMethod.GET)
    public String deleteAudio(@PathVariable int userId, @PathVariable int aId) {
        audioService.removeAudio(aId);
        return "redirect:/list-" + userId;
    }
    
    
    /**
     * This method will provide the medium to edit audio details.
     */
    @RequestMapping(value = { "/edit-audio-{aId}" }, method = RequestMethod.GET)
    public String editAudio(@PathVariable int aId, ModelMap model) {
        Audio audio = audioService.getAudioById(aId);
        model.addAttribute("audioforedit", audio);
        model.addAttribute("edit", true);
        return "editaudio";
    }
    
       /**
     * This method will be called on form submission, handling POST request for
     * updating audio in database. It also validates the user input
     */
    @RequestMapping(value = { "/edit-audio-{ssoId}" }, method = RequestMethod.POST)
    public String updateAudio(@Valid Audio audio, BindingResult result,
            ModelMap model, @PathVariable int aId) {
 
        if (result.hasErrors()) {
            return "editaudio";
        }
 
        audioService.saveOrUpdateAudio(audio);
 
        model.addAttribute("editedsong", audio);
        return "redirect:/list-" + audio.getUser();
    }
    
    
    

}
