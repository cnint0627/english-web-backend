package com.example.demo.pojo.listening;

import com.example.demo.pojo.reading.ReadingQuestionOption;
import lombok.Data;

import java.util.List;

@Data
public class ListeningQuestion {
    private Long id;
    // 所属文章id
    private Long listeningId;
    // 题目题干
    private String title;
    // 题目答案
    private String answer;
    // 题号
    private int sortNum;
    // 题目下的选项列表
    private List<ListeningQuestionOption> options;
}
