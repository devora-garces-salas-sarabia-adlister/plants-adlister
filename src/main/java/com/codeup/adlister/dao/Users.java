package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {
    User findByUsername(String username);
    User findByEmail(String email);
    Long insert(User user);
    void updateUserProfile(Long userId, String username, String hash, String email);
    void deleteUserAcc(String username);

    void updateUserProfile(Long id, String username, String email);
}
