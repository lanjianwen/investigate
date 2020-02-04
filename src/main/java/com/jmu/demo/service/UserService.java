package com.jmu.demo.service;

import com.jmu.demo.entity.User;

import java.util.List;

public interface UserService {

    User findByPhone(String phone);

    void updateUser(User user);

    List<User> findAll();

    List<User> findByRole(String role);

    boolean addUser(User user);
}
