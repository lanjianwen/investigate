package com.jmu.demo.service.impl;

import com.jmu.demo.entity.User;
import com.jmu.demo.repository.UserRepository;
import com.jmu.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;

    @Override
    public User findByPhone(String phone) {
        return userRepository.findByPhone(phone);
    }

    @Override
    public void updateUser(User user) {
//        User user1 = userRepository.findById(user.getId()).get();
//        user1.setArea(user.getArea());
//        user1.setDepartment(user.getDepartment());
//        user1.setName(user.getName());
//        user1.setSex(user.getSex());
//        user1.setIsSchool(user.getIsSchool());
//        user1.setFlag(user.getFlag());
//        userRepository.save(user1);
    }

    @Override
    public List<User> findAll() {
        return userRepository.findAll();
    }

    @Override
    public List<User> findByRole(String role) {
        return userRepository.findByRole(role);
    }

    @Override
    public boolean addUser(User user) {
        User user1 = null;
        try {
            user1 = userRepository.findByPhone(user.getPhone());
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (user1 == null){
            user.setFlag(0);
            userRepository.save(user);
            return true;
        }
        else {
            return false;
        }
    }
}
