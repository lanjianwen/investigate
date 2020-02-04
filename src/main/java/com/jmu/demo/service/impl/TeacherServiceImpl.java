package com.jmu.demo.service.impl;

import com.jmu.demo.entity.Teacher;
import com.jmu.demo.entity.User;
import com.jmu.demo.repository.TeacherRepository;
import com.jmu.demo.repository.UserRepository;
import com.jmu.demo.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeacherServiceImpl implements TeacherService {
    @Autowired
    private TeacherRepository teacherRepository;
    @Autowired
    private UserRepository userRepository;

    @Override
    public List<Teacher> findAll() {
        return teacherRepository.findAll();
    }

    @Override
    public Teacher findByUserId(Integer id) {
        Teacher teacher = teacherRepository.findByUserId(id);
        return teacher;
    }

    @Override
    public void updateTeacher(Teacher teacher) {
        Teacher teacher1 = null;
        try {
            teacher1 = teacherRepository.findByUserId(teacher.getUserId());
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (teacher1 == null){
            teacherRepository.save(teacher);
        }
        else {
            teacher1.setArea(teacher.getArea());
            teacher1.setPhone(teacher.getPhone());
            teacher1.setDepartment(teacher.getDepartment());
            teacher1.setName(teacher.getName());
            teacher1.setSex(teacher.getSex());
            teacher1.setIsSchool(teacher.getIsSchool());
            teacher1.setAddress(teacher.getAddress());
            teacherRepository.save(teacher1);
        }

        User user =userRepository.findById(teacher.getUserId()).get();
        user.setFlag(1);
        userRepository.save(user);
    }
}
