package com.jmu.demo.controller;

import com.jmu.demo.entity.Record;
import com.jmu.demo.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class RecordController {
    @Autowired
    private RecordService recordService;

    @PostMapping("/addRecord")
    public @ResponseBody String addRecord(Record record){
        recordService.addRecord(record);
        return "1";
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
    public @ResponseBody List<Record> show(Integer userId){
        List<Record> list = recordService.findByUserId(userId);
        return list;
    }
}
