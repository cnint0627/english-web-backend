package com.example.demo.service;

import com.alibaba.fastjson.JSONObject;
import com.example.demo.pojo.Reading;

import java.util.List;

public interface ReadingService {
    public List<Reading> list();
    public Reading getById(String id);
    public void add(JSONObject reading);
}
