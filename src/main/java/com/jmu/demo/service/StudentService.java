package com.jmu.demo.service;

import com.jmu.demo.entity.Student;

import java.util.List;

public interface StudentService {
    List<Student> findAll();

    Student findByUserId(Integer id);

    void updateStudent(Student student);
}
