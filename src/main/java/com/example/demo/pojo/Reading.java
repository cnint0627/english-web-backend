package com.example.demo.pojo;

import com.alibaba.fastjson.JSONObject;
import lombok.Data;

@Data
public class Reading {
    private String id;
    // 文章标题
    private String title;
    // 文章正文
    private String content;
    // 题目，包含题干、选项及正确答案
    private JSONObject question;
}
