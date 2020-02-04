package com.jmu.demo.repository;

import com.jmu.demo.entity.Teacher;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

@Repository
public interface TeacherRepository  extends JpaRepository<Teacher,Integer>, JpaSpecificationExecutor<Integer> {
    Teacher findByUserId(Integer id);
}
