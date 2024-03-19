package com.example.demo.mapper;

import com.example.demo.pojo.QuestionRecord;
import com.example.demo.pojo.reading.Reading;
import com.example.demo.pojo.reading.ReadingQuestion;
import com.example.demo.pojo.reading.ReadingQuestionOption;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

@Mapper
public interface ReadingMapper {
    @Select("select id,title,create_time as createTime from reading")
    public List<Reading> list();

    @Select("select id,title,create_time as createTime from reading")
    public List<Reading> page(RowBounds rowBounds);

    @Select("select count(*) from reading")
    public int count();

    public Reading getById(Long id,Long uid);
    public Reading getAllById(Long id);

    public List<String> getAnswerById(Long id);

    public void submitAnswer(List<QuestionRecord> questionRecordList);

    public void deleteRecord(Long id, Long uid);

    public void addReading(Reading reading);

    public void addReadingQuestion(List<ReadingQuestion> readingQuestionList);

    public void addReadingQuestionOption(List<ReadingQuestionOption> readingQuestionOptionList);

    public void editReading(Reading reading);

    public void delete(Long id);

}
