package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
    Ad findAd(Long id);
    List<Ad> findByTitle(String title);
    List<Ad> findByUserId(Long user_id);
    void deleteAdPost(Long adId);
}
