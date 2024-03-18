package com.example.demo.mapper;

import java.util.List;

import com.example.demo.pojo.listening.Listening;
import com.example.demo.pojo.reading.Reading;
import com.example.demo.pojo.writing.Writing;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {
    public List<Reading> getReadingRecord(Long id);
    public List<Listening> getListeningRecord(Long id);
    public List<Writing> getWritingRecord(Long id);
}
