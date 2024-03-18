package com.example.demo.pojo.reading;

import lombok.Data;

@Data
public class ReadingQuestionOption {
    private Long id;
    // 所属题目id
    private Long questionId;
    // 选项内容
    private String content;
}
