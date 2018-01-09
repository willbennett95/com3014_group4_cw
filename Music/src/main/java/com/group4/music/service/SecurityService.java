package com.group4.music.service;

public interface SecurityService {
    String findLoggedInUsername();
    void autologin(String username, String password);
}