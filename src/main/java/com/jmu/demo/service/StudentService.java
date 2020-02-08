package com.jmu.demo.service;

import com.jmu.demo.entity.Student;
import org.springframework.data.domain.Page;

import java.util.List;

public interface StudentService {
    Page<Student> findAll(Integer page);

    Student findByUserId(Integer id);

    void updateStudent(Student student);
}
