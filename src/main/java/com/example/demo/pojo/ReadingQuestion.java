package com.example.demo.pojo;

import lombok.Data;

@Data
public class ReadingQuestion {
    private Long id;
    // 所属文章id
    private Long readingId;
    // 题目题干
    private String title;
    // 题目答案
    private String answer;
}
