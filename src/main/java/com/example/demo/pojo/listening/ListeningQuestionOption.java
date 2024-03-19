package com.example.demo.pojo.listening;

import lombok.Data;

@Data
public class ListeningQuestionOption {
    private Long id;
    // 所属题目id
    private Long questionId;
    // 选项内容
    private String content;
}
