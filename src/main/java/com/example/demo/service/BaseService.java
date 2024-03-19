package com.example.demo.service;

import com.example.demo.pojo.QuestionRecord;

import java.util.List;
import java.util.Map;

public interface BaseService<T> {
    public List<T> list();
    public Map<String,Object> page(int pageNum, int pageSize);
    public T getById(Long id,Long uid);
//    public void submitAnswer(List<QuestionRecord> questionRecordList);
    //    public void add(JSONObject reading);
    public void add(T t);
    public void edit(T t);
    public void delete(Long id);
}
