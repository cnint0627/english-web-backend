package com.example.demo.service;

import com.example.demo.pojo.reading.Reading;

import java.util.List;

public interface ReadingService extends BaseService<Reading>{
    public Reading getAllById(Long id);
    public List<String> getAnswerById(Long id);
}
