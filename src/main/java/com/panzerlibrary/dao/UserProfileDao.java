package com.panzerlibrary.dao;

import com.panzerlibrary.model.UserProfile;
import java.util.List;

public interface UserProfileDao {

    List<UserProfile> findAll();

    UserProfile findByType(String type);

    UserProfile findById(int id);
}
