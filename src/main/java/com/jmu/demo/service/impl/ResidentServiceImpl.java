package com.jmu.demo.service.impl;

import com.jmu.demo.entity.Resident;
import com.jmu.demo.entity.Student;
import com.jmu.demo.entity.Teacher;
import com.jmu.demo.entity.User;
import com.jmu.demo.repository.ResidentRepository;
import com.jmu.demo.repository.UserRepository;
import com.jmu.demo.service.ResidentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ResidentServiceImpl implements ResidentService {
    @Autowired
    private ResidentRepository residentRepository;
    @Autowired
    private UserRepository userRepository;

    @Override
    public Page<Resident> findAll(Integer begin) {
        Pageable pageable = PageRequest.of(begin,10);
        Page<Resident> page = residentRepository.findAll(pageable);
        return page;
    }

    @Override
    public Resident findByUserId(Integer id) {
        return residentRepository.findByUserId(id);
    }

    @Override
    public void updateResident(Resident resident) {
        Resident resident1 = null;
        try {
            resident1 = residentRepository.findByUserId(resident.getUserId());
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (resident1 == null){
            residentRepository.save(resident);
        }
        else {
            resident1.setArea(resident.getArea());
            resident1.setDepartment(resident.getDepartment());
            resident1.setName(resident.getName());
            resident1.setPhone(resident.getPhone());
            resident1.setSex(resident.getSex());
            resident1.setIsSchool(resident.getIsSchool());
            resident1.setAddress(resident.getAddress());
            residentRepository.save(resident1);
        }

        User user =userRepository.findById(resident.getUserId()).get();
        user.setFlag(1);
        userRepository.save(user);
    }
}
