package com.example.demo.pojo.writing;

import com.example.demo.pojo.QuestionRecord;
import lombok.Data;

import java.util.List;

@Data
public class Writing {
    private Long id;
    // 写作标题
    private String title;
    // 写作题目
    private String content;
    // 用户回答记录
    private List<QuestionRecord> records;
    // 创建时间
    private String createTime;
}
