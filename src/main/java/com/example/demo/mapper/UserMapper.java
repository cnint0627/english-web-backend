package com.example.demo.mapper;

import java.util.List;
import com.example.demo.pojo.Reading;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {
    public List<Reading> getReadingRecord(Long id);
}
