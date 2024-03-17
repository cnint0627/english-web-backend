package com.example.demo.pojo;

import lombok.Data;

@Data
public class ListeningQuestion {
    private Long id;
    // 所属的听力id
    private Long listeningId;
    // 填空前的材料内容
    private String content;
    // 填空答案
    private String answer;
    // 该条内容是否有填空选项
    private int hasBlank;
}
