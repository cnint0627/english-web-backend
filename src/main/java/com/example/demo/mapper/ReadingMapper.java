package com.example.demo.mapper;

import com.example.demo.pojo.Reading;
import com.example.demo.pojo.ReadingQuestion;
import com.example.demo.pojo.ReadingQuestionOption;
import org.apache.ibatis.annotations.*;
import com.alibaba.fastjson.JSONObject;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

@Mapper
public interface ReadingMapper {
    @Select("select id,title from reading")
    public List<Reading> list();

    @Select("select id,title from reading")
    public List<Reading> page(RowBounds rowBounds);

    @Select("select count(*) from reading")
    public int count();

    public Reading getById(Long id);

    public void addReading(Reading reading);

    public void addReadingQuestion(List<ReadingQuestion> readingQuestionList);

    public void addReadingQuestionOption(List<ReadingQuestionOption> readingQuestionOptionList);

    public void delete(Long id);
}
