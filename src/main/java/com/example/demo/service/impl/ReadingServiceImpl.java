package com.example.demo.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.example.demo.mapper.ReadingMapper;
import com.example.demo.pojo.Reading;
import com.example.demo.pojo.ReadingQuestion;
import com.example.demo.pojo.ReadingQuestionOption;
import com.example.demo.service.ReadingService;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@Service
public class ReadingServiceImpl implements ReadingService {
    @Autowired
    ReadingMapper readingMapper;

    @Override
    public List<Reading> list(){
        return readingMapper.list();
    }

    @Override
    public List<Reading> page(int pageNum,int pageSize){
        int count = readingMapper.count();  //总条数
        //计算出：共有多少页、这页的偏移量offset是多少
        int pageNums = (count / pageSize) + 1;  //共有多少页
        int offset = (pageNum - 1) * pageSize;  //偏移量

        RowBounds rowBounds = new RowBounds(offset,pageSize);
        return readingMapper.page(rowBounds);
    }

    @Override
    public Reading getById(Long id){
        return readingMapper.getById(id);
    }

    @Override
    public void add(JSONObject readingJson){
        Reading reading=new Reading();
        // 设置文章字段属性
        reading.setTitle(readingJson.getString("title"));
        reading.setContent(readingJson.getString("content"));
        readingMapper.addReading(reading);

        ObjectMapper mapper = new ObjectMapper();
        List<JSONObject> readingQuestionJsonList=mapper.convertValue(readingJson.get("questions"),new TypeReference<>(){});
        List<ReadingQuestion> readingQuestionList=new ArrayList<>();
        List<ReadingQuestionOption> readingQuestionOptionList=new ArrayList<>();
        for(JSONObject readingQuestionJson: readingQuestionJsonList){
            ReadingQuestion readingQuestion=new ReadingQuestion();
            // 设置题目字段属性
            readingQuestion.setReadingId(reading.getId());
            readingQuestion.setTitle(readingQuestionJson.getString("title"));
            readingQuestion.setAnswer(readingQuestionJson.getString("answer"));
            readingQuestionList.add(readingQuestion);
        }
        readingMapper.addReadingQuestion(readingQuestionList);
        for(int index=0;index<readingQuestionList.size();index++){
            JSONObject readingQuestionJson=readingQuestionJsonList.get(index);
            List<JSONObject> readingQuestionOptionJsonList=mapper.convertValue(readingQuestionJson.get("options"),new TypeReference<>(){});
            for(JSONObject readingQuestionOptionJson: readingQuestionOptionJsonList){
                ReadingQuestionOption readingQuestionOption=new ReadingQuestionOption();
                // 设置选项字段属性
                readingQuestionOption.setQuestionId(readingQuestionList.get(index).getId());
                readingQuestionOption.setContent(readingQuestionOptionJson.getString("content"));
                readingQuestionOptionList.add(readingQuestionOption);
            }
        }
        readingMapper.addReadingQuestionOption(readingQuestionOptionList);
    }

    @Override
    public void delete(Long id){
        readingMapper.delete(id);
    }
}
