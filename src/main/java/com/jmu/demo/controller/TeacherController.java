package com.jmu.demo.controller;

import com.jmu.demo.entity.Teacher;
import com.jmu.demo.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class TeacherController {
    @Autowired
    private TeacherService teacherService;


//    @PostMapping("/findTeachers")
//    public @ResponseBody Page<Teacher> findAll(Integer page){
//        return teacherService.findAll(page-1);
//    }
    @GetMapping("/findTeachers")
    public String findAll(Integer page, Model model){
        if (page == null || page == 0){
            page=1;
        }
        Page<Teacher> teachers = teacherService.findAll(page-1);
        model.addAttribute("teachers",teachers.getContent());
        model.addAttribute("totalPages",teachers.getTotalPages());
        model.addAttribute("currentPage",page);
        return "teacherTable";
    }

    @PostMapping("/findOneTeacher")
    public @ResponseBody Teacher findByUserId(Integer id){
        return teacherService.findByUserId(id);
    }

//    @PostMapping("/findOneTeacher")
//    public String findByUserId(Integer id, Model model){
//        Teacher teacher = teacherService.findByUserId(id);
//        model.addAttribute("teacher",teacher);
//        return "teacher";
//    }

    @GetMapping("/showTeachers")
    public String showTeachers(Integer page, Model model){
        if (page == null || page == 0){
            page=1;
        }
        Page<Teacher> teachers = teacherService.findAll(page-1);
        model.addAttribute("teachers",teachers.getContent());
        model.addAttribute("totalPages",teachers.getTotalPages());
        model.addAttribute("currentPage",page);
        return "teacherList";
    }

    @PostMapping("/updateTeacher")
    public @ResponseBody String updateTeacher(Teacher teacher){
        teacher.setFlag(1);
        teacherService.updateTeacher(teacher);
        return "1";
    }
}
