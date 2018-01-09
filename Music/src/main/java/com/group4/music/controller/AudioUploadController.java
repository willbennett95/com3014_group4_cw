/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.group4.music.controller;

import com.group4.music.model.Audio;
import com.group4.music.model.AudioFileModel;
import com.group4.music.model.User;
import com.group4.music.repository.AudioRepository;
import com.group4.music.service.UserService;
import com.group4.music.validator.FileValidator;
import java.io.File;
import java.io.IOException;
import java.util.List;
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
public class AudioUploadController {

    @Autowired
    AudioRepository audioRepository;

    @Autowired
    private UserService us;

    @Autowired
    FileValidator fileValidator;
    // used for getting the path of the file, wont need later
    @Autowired
    ServletContext context;

    private static final String UPLOAD_LOCATION = "com3014_group4_cw/";

    //validating the audio model (has to be the name of the parameter below where @Valid is used
    @InitBinder("audioFileModel")
    protected void initBinder(WebDataBinder binder) {
        binder.setValidator(fileValidator);
    }

    /**
     * This method will list all existing songs for a user.
     */
    @RequestMapping(value = "/list-{userId}", method = RequestMethod.GET)
    public String listSongsOfUser(@PathVariable String userId, ModelMap model) {
        User user = us.findUserByUsername(userId);
        List<Audio> audios = audioRepository.findByUser(user);
        model.addAttribute("songsbyuser", audios);
        model.addAttribute("username", userId);
        return "mymusicpage";
    }

    /**
     * get page to upload a new audio
     *
     * @param userId
     * @param model
     * @return
     */
    @RequestMapping(value = "/audio-{userId}", method = RequestMethod.GET)
    public String getAudioUploadPage(@PathVariable String userId, ModelMap model) {
        User user = us.findUserByUsername(userId);
        model.addAttribute("user", user);

        AudioFileModel audio = new AudioFileModel();
        model.addAttribute("audioFileModel", audio);
        return "audioupload";
    }

    @RequestMapping(value = "/audio-{userId}", method = RequestMethod.POST)
    public String audioFileUpload(@PathVariable String userId, @Valid AudioFileModel fileModel, Audio audio, BindingResult result, ModelMap model) throws IOException {

        if (result.hasErrors()) {
            System.out.println("validation errors");
            return "audioupload";
        } else {

            String absolutePathSystem = context.getRealPath("");
            //audioPath = new AudioPath(context.getRealPath(""));
            // getting index of letter c of com3014_group4_cw/
            int startIndexFolder = absolutePathSystem.indexOf(UPLOAD_LOCATION);
            int endIndex = startIndexFolder + UPLOAD_LOCATION.length();
            String filePath = absolutePathSystem.substring(0, endIndex) + "AudioFiles/";
            MultipartFile multipartFile = fileModel.getAudio();
            // upload file to audio directory
            multipartFile.transferTo(new File(filePath + multipartFile.getOriginalFilename()));

            File file = new File(filePath + multipartFile.getOriginalFilename());

            String fileName = multipartFile.getOriginalFilename();
            model.addAttribute("audioName", fileName);
            return "redirect:/success-" + userId;
        }

    }

    /**
     * get page to upload a new audio
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/success-{userId}", method = RequestMethod.GET)
    public String getAudioDetailsPage(@PathVariable String userId, ModelMap model) {
        Audio audio = new Audio();
        model.addAttribute("addedAudio", audio);
        return "redirect:/success" + userId;
    }

    @RequestMapping(value = "/success-{userId}", method = RequestMethod.POST)
    public String postAudioDetailsPage(@PathVariable String userId, Audio audio, BindingResult result, ModelMap model) throws IOException {

        audio.setUser(us.findUserByUsername(userId));
        audioRepository.save(audio);
        model.addAttribute("username", userId);
        
        return "redirect:/list-" + userId;

    }

    /**
     * edit a song from my music
     */
    @RequestMapping(value = {"/edit-audio-{aId}"}, method = RequestMethod.GET)
    public String editAudio(@PathVariable Long aId, ModelMap model) {
        Audio a = (Audio) audioRepository.findOne(aId);
        model.addAttribute("songtoedit", a);
        return "editsong";
    }

    /**
     *
     */
    @RequestMapping(value = {"/edit-audio-{aId}"}, method = RequestMethod.POST)
    public String updateUser(@Valid Audio audio, BindingResult result,
            ModelMap model, @PathVariable String aId) {

        audioRepository.save(audio);

        model.addAttribute("successedit", audio);
        return "mymusicpage";
    }

    @RequestMapping(value = {"/delete-audio-{userId}-{aId}"}, method = RequestMethod.GET)
    public String deleteDocument(@PathVariable Long aId, @PathVariable String userId) {
        Audio a = (Audio) audioRepository.findOne(aId);
        audioRepository.delete(a);
        return "redirect:/list-" + userId;
    }

}
