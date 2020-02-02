package com.jmu.demo.service;

import com.jmu.demo.entity.Record;

import java.util.List;

public interface RecordService {
    void addRecord(Record record);

    List<Record> findByUserId(Integer userId);
}
