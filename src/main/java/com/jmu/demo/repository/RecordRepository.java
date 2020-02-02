package com.jmu.demo.repository;

import com.jmu.demo.entity.Record;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RecordRepository extends JpaRepository<Record,Integer>, JpaSpecificationExecutor<Integer> {

    List<Record> findByUserId(Integer userId);
}
