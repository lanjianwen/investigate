package com.jmu.demo.repository;

import com.jmu.demo.entity.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentRepository  extends JpaRepository<Student,Integer>, JpaSpecificationExecutor<Integer> {
    Student findByUserId(Integer id);
}
