package com.jmu.demo.controller;

import com.jmu.demo.entity.Student;
import com.jmu.demo.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class StudentController {
    @Autowired
    private StudentService studentService;

    @GetMapping("/findStudents")
    public @ResponseBody List<Student> findAll(){
        return studentService.findAll();
    }

    @PostMapping("/findOneStudent")
    public @ResponseBody Student findByUserId(Integer id){
        return studentService.findByUserId(id);
    }

    @PostMapping("/updateStudent")
    public @ResponseBody String updateStudent(Student student){
        student.setFlag(1);
        studentService.updateStudent(student);
        return "1";
    }
}
