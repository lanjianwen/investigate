package com.jmu.demo.service.impl;

import com.jmu.demo.entity.Student;
import com.jmu.demo.entity.Teacher;
import com.jmu.demo.entity.User;
import com.jmu.demo.repository.StudentRepository;
import com.jmu.demo.repository.UserRepository;
import com.jmu.demo.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentRepository studentRepository;
    @Autowired
    private UserRepository userRepository;

    @Override
    public Page<Student> findAll(Integer begin) {
        Pageable pageable = PageRequest.of(begin,10);
        Page<Student> page = studentRepository.findAll(pageable);
        return page;
    }

    @Override
    public Student findByUserId(Integer id) {
        return studentRepository.findByUserId(id);
    }

    @Override
    public void updateStudent(Student student) {
        Student student1 = null;
        try {
            student1 = studentRepository.findByUserId(student.getUserId());
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (student1 == null) {
            studentRepository.save(student);
        }
        else {
            student1.setArea(student.getArea());
            student1.setDepartment(student.getDepartment());
            student1.setPhone(student.getPhone());
            student1.setName(student.getName());
            student1.setSex(student.getSex());
            student1.setIsSchool(student.getIsSchool());
            student1.setAddress(student.getAddress());
            studentRepository.save(student1);
        }

        User user =userRepository.findById(student.getUserId()).get();
        user.setFlag(1);
        userRepository.save(user);
    }
}
