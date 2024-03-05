package com.example.demo.service;

import com.example.demo.pojo.Reading;

import java.util.List;

public interface ReadingService {
    public List<Reading> list();
    public Reading getById(String id);
    public void addReading(Reading reading);
}
