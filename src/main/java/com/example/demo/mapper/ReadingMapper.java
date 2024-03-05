package com.example.demo.mapper;

import com.example.demo.pojo.Reading;
import org.apache.ibatis.annotations.*;
import com.alibaba.fastjson.JSONObject;
import java.util.List;

@Mapper
public interface ReadingMapper {
    @Select("select * from reading_comprehension")
    public List<Reading> list();

    @Select("select * from reading_comprehension where id = #{id}")
    public Reading getById(String id);

    public void addReading(Reading reading);
}
