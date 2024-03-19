package com.example.demo.service;

import com.example.demo.pojo.Exam.Exam;

public interface ExamService extends BaseService<Exam>{
    public void submitAnswer(Long id,Long uid);
}
