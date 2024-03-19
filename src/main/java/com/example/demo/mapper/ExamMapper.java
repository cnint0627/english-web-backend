package com.example.demo.mapper;

import com.example.demo.pojo.Exam.Exam;
import com.example.demo.pojo.Exam.ExamMaterial;
import com.example.demo.pojo.QuestionRecord;
import com.example.demo.pojo.reading.Reading;
import com.example.demo.pojo.reading.ReadingQuestion;
import com.example.demo.pojo.reading.ReadingQuestionOption;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

@Mapper
public interface ExamMapper {
    @Select("select id,title,create_time as createTime from exam")
    public List<Exam> list();

    public List<Exam> page(RowBounds rowBounds,Long uid);

    @Select("select count(*) from exam")
    public int count();

    public Exam getById(Long id,Long uid);
    public Exam getAllById(Long id);

    public List<String> getAnswerById(Long id);

    @Insert("insert into user_exam_record(exam_id,uid,create_time) values(#{id},#{uid},curdate())")
    public void submitAnswer(Long id,Long uid);

    public void addExam(Exam exam);

    public void addExamMaterial(List<ExamMaterial> examMaterialList);

    public void editExam(Exam exam);

    public void delete(Long id);
}
