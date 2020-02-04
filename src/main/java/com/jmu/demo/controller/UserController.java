package com.jmu.demo.controller;

import com.jmu.demo.entity.User;
import com.jmu.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("/isLogin")
    public @ResponseBody User isLogin(HttpServletRequest request) throws IOException {
        //从session中获取登录用户
        Object object = request.getSession().getAttribute("user");
        //将user写回客户端
        User user = (User) object;
        User user1 = userService.findByPhone(user.getPhone());
        return user1;
    }

    @GetMapping("/teacher")
    public String teacher(){
        return "teacher";
    }

    @GetMapping("/student")
    public String student(){
        return "student";
    }

    @GetMapping("/resident")
    public String resident(){
        return "resident";
    }

    @GetMapping("/showTeachers")
    public String showTeachers(){
        return "teacherList";
    }

    @GetMapping("/showStudents")
    public String showStudents(){
        return "studentList";
    }

    @GetMapping("/admin")
    public String admin(){
        return "admin";
    }

    @GetMapping("/registerForm")
    public String registerForm(){
        return "registerForm";
    }

    @PostMapping("/update")
    public @ResponseBody String update(User user){
        user.setFlag(1);
        userService.updateUser(user);
        return "1";
    }

    @GetMapping("/findAll")
    public @ResponseBody List<User> findAll(){
        return userService.findAll();
    }

    @PostMapping("/findByRole")
    public @ResponseBody List<User> findByRole(String role){
        return userService.findByRole(role);
    }
    @GetMapping("/register")
    public String register(){
        return "register";
    }
    @PostMapping("/addUser")
    public @ResponseBody String addUser(User user){
        if (user.getPhone().isEmpty() || user.getPassword().isEmpty()){
            return "0";
        }
        if (userService.addUser(user)){
            return "1";
        }
        else {
            return "2";
        }

    }
}
