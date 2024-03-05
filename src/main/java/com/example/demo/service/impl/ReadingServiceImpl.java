package com.example.demo.service.impl;

import com.example.demo.mapper.ReadingMapper;
import com.example.demo.pojo.Reading;
import com.example.demo.service.ReadingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReadingServiceImpl implements ReadingService {
    @Autowired
    ReadingMapper readingMapper;

    @Override
    public List<Reading> list(){
        return readingMapper.list();
    }

    @Override
    public Reading getById(String id){
        return readingMapper.getById(id);
    }

    @Override
    public void addReading(Reading reading){
        readingMapper.addReading(reading);
    }
}
