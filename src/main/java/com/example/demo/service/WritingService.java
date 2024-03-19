package com.example.demo.service;

import com.example.demo.pojo.QuestionRecord;
import com.example.demo.pojo.writing.Writing;

import java.util.List;

public interface WritingService extends BaseService<Writing> {
    public void submitAnswer(List<QuestionRecord> questionRecordList);
}
