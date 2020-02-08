package com.jmu.demo.service;

import com.jmu.demo.entity.Teacher;
import org.springframework.data.domain.Page;

import java.util.List;
import java.util.Optional;

public interface TeacherService {
    Page<Teacher> findAll(Integer page);

    Teacher findByUserId(Integer id);

    void updateTeacher(Teacher teacher);
}
