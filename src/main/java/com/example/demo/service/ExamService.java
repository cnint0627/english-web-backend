package com.example.demo.service;

import com.example.demo.pojo.Exam.Exam;

import java.util.Map;

public interface ExamService extends BaseService<Exam>{
    public Map<String,Object> page(int pageNum, int pageSize, Long uid);
    public void submitAnswer(Long id,Long uid);
}
