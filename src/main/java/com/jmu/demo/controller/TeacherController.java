package com.jmu.demo.controller;

import com.jmu.demo.entity.Teacher;
import com.jmu.demo.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
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


    @GetMapping("/findTeachers")
    public @ResponseBody List<Teacher> findAll(){
        return teacherService.findAll();
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

    @PostMapping("/updateTeacher")
    public @ResponseBody String updateTeacher(Teacher teacher){
        teacher.setFlag(1);
        teacherService.updateTeacher(teacher);
        return "1";
    }
}
