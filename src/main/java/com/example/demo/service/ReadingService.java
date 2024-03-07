package com.example.demo.service;

import com.alibaba.fastjson.JSONObject;
import com.example.demo.pojo.Reading;

import java.util.List;

public interface ReadingService {
    public List<Reading> list();
    public List<Reading> page(int pageNum,int pageSize);
    public Reading getById(Long id);
    public void add(JSONObject reading);
    public void delete(Long id);
}
