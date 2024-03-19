package com.example.demo.pojo.Exam;

import lombok.Data;


@Data
public class ExamMaterial {
    private Long id;
    // 所属组卷ID
    private Long examId;
    // 所含材料ID
    private Long materialId;
    // 材料种类（阅读、听力、写作、口语）
    private String type;
    // 序号
    private int sortNum;
}
