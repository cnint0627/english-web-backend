package com.example.demo.mapper;

import com.example.demo.pojo.Reading;
import com.example.demo.pojo.ReadingQuestion;
import com.example.demo.pojo.ReadingQuestionOption;
import org.apache.ibatis.annotations.*;
import com.alibaba.fastjson.JSONObject;
import java.util.List;

@Mapper
public interface ReadingMapper {
    @Select("select * from reading")
    public List<Reading> list();

    @Select("select * from reading where id = #{id}")
    public Reading getById(String id);

    public void addReading(Reading reading);

    public void addReadingQuestion(List<ReadingQuestion> readingQuestionList);

    public void addReadingQuestionOption(List<ReadingQuestionOption> readingQuestionOptionList);
}
