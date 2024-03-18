package com.example.demo.service.impl;

import com.example.demo.mapper.ListeningMapper;
import com.example.demo.pojo.*;
import com.example.demo.service.ListeningService;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ListeningServiceImpl implements ListeningService {
    @Autowired
    private ListeningMapper listeningMapper;

    @Override
    public List<Listening> list(){
        return listeningMapper.list();
    }

    @Override
    public Map<String,Object> page(int pageNum,int pageSize){
        int count = listeningMapper.count();  //总条数
        //计算出：共有多少页、这页的偏移量offset是多少
        int pageNums = (count / pageSize) + 1;  //共有多少页
        int offset = (pageNum - 1) * pageSize;  //偏移量

        RowBounds rowBounds = new RowBounds(offset,pageSize);
        Map<String,Object> result=new HashMap<>();
        result.put("records",listeningMapper.page(rowBounds));
        result.put("total",count);
        return result;
    }

    @Override
    public Listening getById(Long id){
        Listening listening=listeningMapper.getAllById(id);
        for(ListeningQuestion listeningQuestion: listening.getQuestions()){
            if(listeningQuestion.getAnswer()!=null){
                listeningQuestion.setHasBlank(1);
            }else{
                listeningQuestion.setHasBlank(0);
            }
            listeningQuestion.setAnswer(null);
        }
        return listening;
    }

    @Override
    public Listening getAllById(Long id){
        return listeningMapper.getAllById(id);
    }

    @Override
    public List<String> getAnswerById(Long id){
        List<String> answerList=listeningMapper.getAnswerById(id);
        if(answerList.getLast()==null){
            answerList.removeLast();
        }
        return answerList;
    }

    @Override
    public void submitAnswer(List<QuestionRecord> questionRecordList){
        listeningMapper.submitAnswer(questionRecordList);
    }

    @Override
    public void add(Listening listening){
        listeningMapper.addListening(listening);
        List<ListeningQuestion> listeningQuestionList=listening.getQuestions();
        for(ListeningQuestion listeningQuestion: listeningQuestionList){
            listeningQuestion.setListeningId(listening.getId());
        }
        listeningMapper.addListeningQuestion(listeningQuestionList);
    }

    @Override
    public void edit(Listening listening){
        // 感觉用更新的方式有点复杂，这里采用先删掉原有的文章，再新增文章的方式
        this.delete(listening.getId());
        // 把原来的id保留
        listeningMapper.editListening(listening);
        List<ListeningQuestion> listeningQuestionList=listening.getQuestions();
        for(ListeningQuestion listeningQuestion: listeningQuestionList){
            listeningQuestion.setListeningId(listening.getId());
        }
        listeningMapper.addListeningQuestion(listeningQuestionList);
    }

    @Override
    public void delete(Long id){
        listeningMapper.delete(id);
    }
}
