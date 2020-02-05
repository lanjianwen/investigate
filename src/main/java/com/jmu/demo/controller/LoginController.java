package com.jmu.demo.controller;

import com.jmu.demo.entity.User;
import com.jmu.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {
    @Autowired
    private UserService userService;

    @PostMapping("/login")
    public  @ResponseBody String login(String phone, String password, String role, HttpServletRequest request, Model model){
        if (phone.isEmpty() || password.isEmpty()){
            return "0";
        }
        User user = userService.findByPhone(phone);

        if (user != null){
            if (user.getPassword().equals(password) && user.getRole().equals(role)){
                request.getSession().setAttribute("user",user);
                if (user.getPhone().equals("admint")){
                    return "3";
                }
                else if (user.getPhone().equals("admins")){
                    return "4";
                }
                else {
                    return "1";
                }
            }
            else {
                return "2";
            }
        }
        else {
            return "0";
        }
    }
}
