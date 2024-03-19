package com.example.demo.pojo.Exam;

import lombok.Data;

import java.util.List;

@Data
public class Exam {
    private Long id;
    // 标题
    private String title;
    // 创建时间
    private String createTime;
    // 是否完成
    private int isCompleted;
    // 组卷下的材料列表
    private List<ExamMaterial> materials;

}
