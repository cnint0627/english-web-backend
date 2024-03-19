package com.example.demo.service.impl;

import com.example.demo.mapper.ExamMapper;
import com.example.demo.mapper.ReadingMapper;
import com.example.demo.pojo.Exam.Exam;
import com.example.demo.pojo.Exam.ExamMaterial;
import com.example.demo.pojo.QuestionRecord;
import com.example.demo.pojo.listening.Listening;
import com.example.demo.pojo.listening.ListeningBlank;
import com.example.demo.pojo.reading.Reading;
import com.example.demo.service.ExamService;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ExamServiceImpl implements ExamService {
    @Autowired
    ExamMapper examMapper;

    @Override
    public List<Exam> list(){
        return examMapper.list();
    }

    @Override
    public Map<String,Object> page(int pageNum, int pageSize){
        int count = examMapper.count();  //总条数
        //计算出：共有多少页、这页的偏移量offset是多少
        int pageNums = (count / pageSize) + 1;  //共有多少页
        int offset = (pageNum - 1) * pageSize;  //偏移量

        RowBounds rowBounds = new RowBounds(offset,pageSize);
        Map<String,Object> result=new HashMap<>();
        result.put("records",examMapper.page(rowBounds));
        result.put("total",count);
        return result;
    }

    @Override
    public Exam getById(Long id, Long uid){
        Exam exam=examMapper.getById(id,uid);
        if(exam.getIsCompleted()>0){
            // 如果从表中查到了该条提交记录
            exam.setIsCompleted(1);
        }
        return exam;
    }

    @Override
    public void submitAnswer(Long id,Long uid){
        examMapper.submitAnswer(id,uid);
    }

    @Override
    public void add(Exam exam) {
        examMapper.addExam(exam);
        List<ExamMaterial> examMaterialList = exam.getMaterials();
        if (!examMaterialList.isEmpty()) {
            // 听力材料的填空部分
            for (ExamMaterial examMaterial : examMaterialList) {
                examMaterial.setExamId(exam.getId());
            }
            examMapper.addExamMaterial(examMaterialList);
        }
    }

    @Override
    public void edit(Exam exam){
        // 感觉用更新的方式有点复杂，这里采用先删掉原有的文章，再新增文章的方式
        this.delete(exam.getId());
        // 把原来的id保留
        examMapper.editExam(exam);
        List<ExamMaterial> examMaterialList = exam.getMaterials();
        if (!examMaterialList.isEmpty()) {
            // 听力材料的填空部分
            for (ExamMaterial examMaterial : examMaterialList) {
                examMaterial.setExamId(exam.getId());
            }
            examMapper.addExamMaterial(examMaterialList);
        }
    }

    @Override
    public void delete(Long id){
        examMapper.delete(id);
    }
}
