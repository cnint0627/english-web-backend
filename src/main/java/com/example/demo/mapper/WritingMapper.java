package com.example.demo.mapper;

import com.example.demo.pojo.*;
import com.example.demo.pojo.writing.Writing;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

@Mapper
public interface WritingMapper {
    @Select("select id,title,create_time as createTime from writing")
    public List<Writing> list();

    @Select("select id,title,create_time as createTime from writing")
    public List<Writing> page(RowBounds rowBounds);

    @Select("select count(*) from writing")
    public int count();

    public Writing getById(Long id,Long uid);

    public void submitAnswer(List<QuestionRecord> questionRecordList);

    @Insert("insert into writing(title,content,create_time) values(#{title},#{content},curdate())")
    public void addWriting(Writing writing);

    @Insert("insert into writing(id,title,content,create_time) values(#{id},#{title},#{content},#{createTime})")
    public void editWriting(Writing writing);

    @Delete("delete from writing where id = #{id}")
    public void delete(Long id);
}
