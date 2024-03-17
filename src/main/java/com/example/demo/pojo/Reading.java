package com.example.demo.pojo;

import lombok.Data;

import java.sql.Date;
import java.util.List;

@Data
public class Reading {
    private Long id;
    // 文章标题
    private String title;
    // 文章正文
    private String content;
    // 创建时间
    private String createTime;
    // 文章下的题目列表
    private List<ReadingQuestion> questions;
    // 用户回答记录
    private List<QuestionRecord> records;
}
