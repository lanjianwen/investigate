package com.jmu.demo.service;

import com.jmu.demo.entity.Resident;
import org.springframework.data.domain.Page;

import java.util.List;

public interface ResidentService {
    Page<Resident> findAll(Integer page);

    Resident findByUserId(Integer id);

    void updateResident(Resident resident);
}
