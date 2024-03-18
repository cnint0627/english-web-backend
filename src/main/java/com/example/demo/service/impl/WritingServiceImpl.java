package com.example.demo.service.impl;

import com.example.demo.mapper.WritingMapper;
import com.example.demo.pojo.*;
import com.example.demo.pojo.writing.Writing;
import com.example.demo.service.WritingService;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class WritingServiceImpl implements WritingService {
    @Autowired
    private WritingMapper writingMapper;

    @Override
    public List<Writing> list(){
        return writingMapper.list();
    }

    @Override
    public Map<String,Object> page(int pageNum, int pageSize){
        int count = writingMapper.count();  //总条数
        //计算出：共有多少页、这页的偏移量offset是多少
        int pageNums = (count / pageSize) + 1;  //共有多少页
        int offset = (pageNum - 1) * pageSize;  //偏移量

        RowBounds rowBounds = new RowBounds(offset,pageSize);
        Map<String,Object> result=new HashMap<>();
        result.put("records",writingMapper.page(rowBounds));
        result.put("total",count);
        return result;
    }

    @Override
    public Writing getById(Long id, Long uid){
        return writingMapper.getById(id,uid);
    }

    @Override
    public void submitAnswer(List<QuestionRecord> questionRecordList){
        writingMapper.submitAnswer(questionRecordList);
    }

    @Override
    public void add(Writing writing){
        writingMapper.addWriting(writing);
    }

    @Override
    public void edit(Writing writing){
        // 感觉用更新的方式有点复杂，这里采用先删掉原有的文章，再新增文章的方式
        this.delete(writing.getId());
        // 把原来的id保留
        writingMapper.editWriting(writing);
    }

    @Override
    public void delete(Long id){
        writingMapper.delete(id);
    }
}
