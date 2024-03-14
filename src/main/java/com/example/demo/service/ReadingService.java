package com.example.demo.service;

import com.alibaba.fastjson.JSONObject;
import com.example.demo.pojo.Reading;

import java.util.List;
import java.util.Map;

public interface ReadingService {
    public List<Reading> list();
    public Map<String,Object> page(int pageNum, int pageSize);
    public Reading getById(Long id);
    public Reading getAllById(Long id);
    public List<String> getAnswerById(Long id);
    public void add(JSONObject reading);
    public void edit(JSONObject reading);
    public void delete(Long id);
}
