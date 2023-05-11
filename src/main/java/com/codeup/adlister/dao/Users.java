package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);
    void updateUserProfile(Long userId, String username, String password, String email);
    void deleteUserAcc(String username);
}
