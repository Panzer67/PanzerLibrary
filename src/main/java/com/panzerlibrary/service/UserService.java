package com.panzerlibrary.service;

import com.panzerlibrary.model.User;

public interface UserService {
    
    void save(User user);

    User findById(int id);

    User findBySso(String sso);
}
