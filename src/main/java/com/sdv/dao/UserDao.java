package com.sdv.dao;

import com.sdv.entity.User;

import java.util.List;

public interface UserDao {

    void save(User user);

    List<User> getAll();
}
