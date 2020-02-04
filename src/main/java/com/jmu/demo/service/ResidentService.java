package com.jmu.demo.service;

import com.jmu.demo.entity.Resident;

import java.util.List;

public interface ResidentService {
    List<Resident> findAll();

    Resident findByUserId(Integer id);

    void updateResident(Resident resident);
}
