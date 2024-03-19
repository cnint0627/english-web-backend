package com.example.demo.pojo;

import lombok.Data;

@Data
public class QuestionRecord {
    private Long id;
    // 题目所属文章ID
    private Long textId;
    // 用户ID
    private Long uid;
    // 用户回答记录
    private String record;
    // 正确答案
    private String answer;
    // 是否回答正确
    private int isCorrect;
    // 题号
    private int sortNum;
    // 创建时间
    private String createTime;
}
