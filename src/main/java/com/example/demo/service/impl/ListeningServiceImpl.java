package com.example.demo.service.impl;

import com.example.demo.mapper.ListeningMapper;
import com.example.demo.pojo.*;
import com.example.demo.pojo.listening.Listening;
import com.example.demo.pojo.listening.ListeningBlank;
import com.example.demo.pojo.listening.ListeningQuestion;
import com.example.demo.pojo.listening.ListeningQuestionOption;
import com.example.demo.pojo.reading.ReadingQuestion;
import com.example.demo.pojo.reading.ReadingQuestionOption;
import com.example.demo.service.ListeningService;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Slf4j
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
    public Listening getById(Long id,Long uid){
        Listening listening=listeningMapper.getAllById(id,uid);
        for(ListeningBlank listeningBlank: listening.getBlanks()){
            if(listeningBlank.getAnswer()!=null){
                // 返回时保留答案的换行符，使页面能正常渲染换行
                if(listeningBlank.getAnswer().endsWith("\n")){
                    listeningBlank.setAnswer("\n");
                }else{
                    listeningBlank.setAnswer(null);
                }
                listeningBlank.setHasBlank(1);
            }else{
                listeningBlank.setHasBlank(0);
            }
        }
        for(ListeningQuestion listeningQuestion:listening.getQuestions()){
            listeningQuestion.setAnswer(null);
        }
        return listening;
    }

    @Override
    public Listening getAllById(Long id){
        return listeningMapper.getAllById(id, 4L);
    }

    @Override
    public List<String> getAnswerById(Long id){
        List<String> answerList=listeningMapper.getAnswerById(id);
        if(answerList.getFirst()==null){
            //  若答案列表的第一个元素是填空题的非题目
            answerList.removeFirst();
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
        List<ListeningBlank> listeningBlankList=listening.getBlanks();
        if(!listeningBlankList.isEmpty()) {
            // 听力材料的填空部分
            for (ListeningBlank listeningBlank : listeningBlankList) {
                listeningBlank.setListeningId(listening.getId());
            }
            listeningMapper.addListeningBlank(listeningBlankList);
        }

        List<ListeningQuestion> listeningQuestionList=listening.getQuestions();
        if(!listeningQuestionList.isEmpty()) {
            // 听力材料的选择题部分
            for (ListeningQuestion listeningQuestion : listeningQuestionList) {
                listeningQuestion.setListeningId(listening.getId());
            }
            listeningMapper.addListeningQuestion(listeningQuestionList);
            List<ListeningQuestionOption> listeningQuestionOptionList = new ArrayList<>();
            for (ListeningQuestion listeningQuestion : listeningQuestionList) {
                for (ListeningQuestionOption listeningQuestionOption : listeningQuestion.getOptions()) {
                    listeningQuestionOption.setQuestionId(listeningQuestion.getId());
                    listeningQuestionOptionList.add(listeningQuestionOption);
                }
            }
            listeningMapper.addListeningQuestionOption(listeningQuestionOptionList);
        }
    }

    @Override
    public void edit(Listening listening){
        // 感觉用更新的方式有点复杂，这里采用先删掉原有的文章，再新增文章的方式
        this.delete(listening.getId());
        // 把原来的id保留
        listeningMapper.editListening(listening);
        List<ListeningBlank> listeningBlankList=listening.getBlanks();
        for(ListeningBlank listeningBlank: listeningBlankList){
            listeningBlank.setListeningId(listening.getId());
        }
        listeningMapper.addListeningBlank(listeningBlankList);

        List<ListeningQuestion> listeningQuestionList=listening.getQuestions();
        if(!listeningQuestionList.isEmpty()) {
            // 听力材料的选择题部分
            for (ListeningQuestion listeningQuestion : listeningQuestionList) {
                listeningQuestion.setListeningId(listening.getId());
            }
            listeningMapper.addListeningQuestion(listeningQuestionList);
            List<ListeningQuestionOption> listeningQuestionOptionList = new ArrayList<>();
            for (ListeningQuestion listeningQuestion : listeningQuestionList) {
                for (ListeningQuestionOption listeningQuestionOption : listeningQuestion.getOptions()) {
                    listeningQuestionOption.setQuestionId(listeningQuestion.getId());
                    listeningQuestionOptionList.add(listeningQuestionOption);
                }
            }
            listeningMapper.addListeningQuestionOption(listeningQuestionOptionList);
        }
    }

    @Override
    public void delete(Long id){
        listeningMapper.delete(id);
    }
}
