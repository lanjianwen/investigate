package com.jmu.demo.controller;

import com.jmu.demo.entity.Student;
import com.jmu.demo.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class StudentController {
    @Autowired
    private StudentService studentService;

    @GetMapping("/findStudents")
    public String findAll(Integer page, Model model){
        if (page == null || page == 0){
            page = 1;
        }
        Page<Student> students = studentService.findAll(page-1);
        model.addAttribute("students",students.getContent());
        model.addAttribute("totalPages",students.getTotalPages());
        model.addAttribute("currentPage",page);
        return "studentTable";
    }

    @GetMapping("/showStudents")
    public String showStudents(Integer page, Model model){
        if (page == null || page == 0){
            page = 1;
        }
        Page<Student> students = studentService.findAll(page-1);
        model.addAttribute("students",students.getContent());
        model.addAttribute("totalPages",students.getTotalPages());
        model.addAttribute("currentPage",page);
        return "studentList";
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
