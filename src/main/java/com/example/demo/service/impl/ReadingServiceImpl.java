package com.example.demo.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.example.demo.mapper.ReadingMapper;
import com.example.demo.pojo.Reading;
import com.example.demo.pojo.ReadingQuestion;
import com.example.demo.pojo.ReadingQuestionOption;
import com.example.demo.service.ReadingService;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.sql.Array;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.util.*;

@Service
@Slf4j
public class ReadingServiceImpl implements ReadingService {
    @Autowired
    ReadingMapper readingMapper;

    @Override
    public List<Reading> list(){
        return readingMapper.list();
    }

    @Override
    public Map<String,Object> page(int pageNum,int pageSize){
        int count = readingMapper.count();  //总条数
        //计算出：共有多少页、这页的偏移量offset是多少
        int pageNums = (count / pageSize) + 1;  //共有多少页
        int offset = (pageNum - 1) * pageSize;  //偏移量

        RowBounds rowBounds = new RowBounds(offset,pageSize);
        Map<String,Object> result=new HashMap<>();
        result.put("records",readingMapper.page(rowBounds));
        result.put("total",count);
        return result;
    }

    @Override
    public Reading getById(Long id){
        return readingMapper.getById(id);
    }

    @Override
    public Reading getAllById(Long id){
        return readingMapper.getAllById(id);
    }

    @Override
    public List<String> getAnswerById(Long id){
        return readingMapper.getAnswerById(id);
    }

    /*
    这是之前用JSONObject作为传参写的add方法，现在改用Reading实体作为传参
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

     */

    @Override
    public void add(Reading reading){
        readingMapper.addReading(reading);
        List<ReadingQuestion> readingQuestionList=reading.getQuestions();
        for(ReadingQuestion readingQuestion: readingQuestionList){
            readingQuestion.setReadingId(reading.getId());
        }
        readingMapper.addReadingQuestion(readingQuestionList);
        List<ReadingQuestionOption> readingQuestionOptionList=new ArrayList<>();
        for(ReadingQuestion readingQuestion: readingQuestionList){
            for(ReadingQuestionOption readingQuestionOption: readingQuestion.getOptions()){
                readingQuestionOption.setQuestionId(readingQuestion.getId());
                readingQuestionOptionList.add(readingQuestionOption);
            }
        }
        readingMapper.addReadingQuestionOption(readingQuestionOptionList);
    }

    @Override
    public void edit(Reading reading){
        // 感觉用更新的方式有点复杂，这里采用先删掉原有的文章，再新增文章的方式
        this.delete(reading.getId());
        // 把原来的id保留
        readingMapper.editReading(reading);
        List<ReadingQuestion> readingQuestionList=reading.getQuestions();
        for(ReadingQuestion readingQuestion: readingQuestionList){
            readingQuestion.setReadingId(reading.getId());
        }
        readingMapper.addReadingQuestion(readingQuestionList);
        List<ReadingQuestionOption> readingQuestionOptionList=new ArrayList<>();
        for(ReadingQuestion readingQuestion: readingQuestionList){
            for(ReadingQuestionOption readingQuestionOption: readingQuestion.getOptions()){
                readingQuestionOption.setQuestionId(readingQuestion.getId());
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
