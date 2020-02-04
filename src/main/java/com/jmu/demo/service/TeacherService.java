package com.jmu.demo.service;

import com.jmu.demo.entity.Teacher;

import java.util.List;
import java.util.Optional;

public interface TeacherService {
    List<Teacher> findAll();

    Teacher findByUserId(Integer id);

    void updateTeacher(Teacher teacher);
}
