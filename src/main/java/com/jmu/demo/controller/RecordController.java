package com.jmu.demo.controller;

import com.jmu.demo.entity.Record;
import com.jmu.demo.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class RecordController {
    @Autowired
    private RecordService recordService;

    @PostMapping("/addRecord")
    public String addRecord(Record record, String province, String city, String role){
        record.setPlace(province+city);
        recordService.addRecord(record);
        if (role.equals("teacher")){
            return "redirect:/teacher";
        }
        else if (role.equals("student")){
            return "redirect:/student";
        }
        else {
            return "redirect:/resident";
        }
    }

    @GetMapping("/record")
    public String record(){
        return "record";
    }

    @GetMapping("/list")
    public String list(){
        return "list";
    }

    @PostMapping("/show")
    public  @ResponseBody List<Record> show(Integer userId, Model model){
        List<Record> records = recordService.findByUserId(userId);
        return records;
    }

    @GetMapping("/dailyForm")
    public String dailyForm(){
        return "dailyForm";
    }
}
