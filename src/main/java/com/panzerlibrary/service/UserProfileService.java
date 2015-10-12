package com.panzerlibrary.service;

import com.panzerlibrary.model.UserProfile;
import java.util.List;

public interface UserProfileService {

    List<UserProfile> findAll();

    UserProfile findByType(String type);

    UserProfile findById(int id);
}
