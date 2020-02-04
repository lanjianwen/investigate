package com.jmu.demo.repository;

import com.jmu.demo.entity.Resident;
import com.jmu.demo.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

@Repository
public interface ResidentRepository  extends JpaRepository<Resident,Integer>, JpaSpecificationExecutor<Integer> {
    Resident findByUserId(Integer id);
}
