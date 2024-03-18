package com.example.demo.mapper;

import com.example.demo.pojo.listening.Listening;
import com.example.demo.pojo.listening.ListeningBlank;
import com.example.demo.pojo.QuestionRecord;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

@Mapper
public interface ListeningMapper {
    @Select("select id,title,create_time as createTime from listening")
    public List<Listening> list();

    @Select("select id,title,create_time as createTime from listening")
    public List<Listening> page(RowBounds rowBounds);

    @Select("select count(*) from listening")
    public int count();

//    public Listening getById(Long id);

    public Listening getAllById(Long id,Long uid);

    public List<String> getAnswerById(Long id);

    public void submitAnswer(List<QuestionRecord> questionRecordList);

    public void addListening(Listening listening);

    public void addListeningBlank(List<ListeningBlank> listeningBlankList);

    public void editListening(Listening listening);

    public void delete(Long id);

}
