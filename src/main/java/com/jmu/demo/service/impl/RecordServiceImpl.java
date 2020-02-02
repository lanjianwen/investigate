package com.jmu.demo.service.impl;

import com.jmu.demo.entity.Record;
import com.jmu.demo.repository.RecordRepository;
import com.jmu.demo.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecordServiceImpl implements RecordService {
    @Autowired
    private RecordRepository recordRepository;

    @Override
    public void addRecord(Record record) {
        recordRepository.save(record);
    }

    @Override
    public List<Record> findByUserId(Integer userId) {
        return recordRepository.findByUserId(userId);
    }
}
