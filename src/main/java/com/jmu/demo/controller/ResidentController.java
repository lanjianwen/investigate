package com.jmu.demo.controller;

import com.jmu.demo.entity.Resident;
import com.jmu.demo.service.ResidentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ResidentController {
    @Autowired
    private ResidentService residentService;

    @GetMapping("/findResidents")
    public @ResponseBody
    List<Resident> findAll(){
        return residentService.findAll();
    }

    @PostMapping("/findOneResident")
    public @ResponseBody Resident findByUserId(Integer id){
        return residentService.findByUserId(id);
    }

    @PostMapping("/updateResident")
    public @ResponseBody String updateResident(Resident resident){
        resident.setFlag(1);
        residentService.updateResident(resident);
        return "1";
    }
}
