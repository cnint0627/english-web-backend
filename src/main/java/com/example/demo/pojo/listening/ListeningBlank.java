package com.example.demo.pojo.listening;

import lombok.Data;

@Data
public class ListeningBlank {
    private Long id;
    // 所属的听力id
    private Long listeningId;
    // 填空前的材料内容
    private String content;
    // 填空答案
    private String answer;
    // 该条内容是否有填空选项
    private int hasBlank;
    // 题号
    private int sortNum;
}
