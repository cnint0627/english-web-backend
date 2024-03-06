package com.example.demo.pojo;

import lombok.Data;

import java.util.List;
import java.util.Map;

@Data
public class Reading {
    private Long id;
    // 文章标题
    private String title;
    // 文章正文
    private String content;
    // 文章下的题目列表
    private List<ReadingQuestion> questions;
}
