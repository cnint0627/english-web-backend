package com.example.demo.pojo;

import lombok.Data;

import java.util.List;

@Data
public class Listening {
    private Long id;
    // 听力标题
    private String title;
    // 创建时间
    private String createTime;
    // 听力音频路径
    private String audioPath;
    // 听力下的题目列表
    private List<ListeningQuestion> questions;
    // 用户回答记录
    private List<QuestionRecord> records;
}
