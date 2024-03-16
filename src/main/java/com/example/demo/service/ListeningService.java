package com.example.demo.service;

import com.example.demo.pojo.Listening;
import com.example.demo.pojo.Reading;

import java.util.List;
import java.util.Map;

public interface ListeningService {
    public List<Listening> list();
    public Map<String, Object> page(int pageNum, int pageSize);
    public Listening getById(Long id);
    public Listening getAllById(Long id);
    public List<String> getAnswerById(Long id);
    public void add(Listening listening);
    public void edit(Listening listening);
    public void delete(Long id);
}
