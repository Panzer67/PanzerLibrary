package com.panzerlibrary.dao;

import com.panzerlibrary.model.User;

public interface UserDao {
    
    void save(User user);

    User findById(int id);

    User findBySSO(String sso);
}
