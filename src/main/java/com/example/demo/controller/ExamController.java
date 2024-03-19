package com.example.demo.controller;

import com.example.demo.pojo.Exam.Exam;
import com.example.demo.pojo.QuestionRecord;
import com.example.demo.pojo.Result;
import com.example.demo.pojo.reading.Reading;
import com.example.demo.service.ExamService;
import com.example.demo.service.ReadingService;
import com.example.demo.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RequestMapping("/exam")
@RestController
@CrossOrigin
public class ExamController {
    @Autowired
    private ExamService examService;
    @Autowired
    private UserService userService;

    /**
     * 获取所有组卷的信息
     * @return 包含所有组卷信息的列表
     */
    @GetMapping("/list")
    public Result list(){
        return Result.success(examService.list());
    }

    /**
     * 分页获取组卷信息
     * @return 包含组卷信息的列表和组卷总个数
     */
    @GetMapping("/page")
    public Result page(@RequestParam int pageNum, @RequestParam int pageSize){
        return Result.success(examService.page(pageNum,pageSize));
    }

    /**
     * 根据id获取组卷的全部信息
     * @param id 组卷id
     * @return 指定id组卷的全部信息
     */
    @GetMapping("/getById")
    public Result getById(@RequestParam Long id, HttpServletRequest request){
        // 获取用户ID
        Long uid=userService.getByToken(request).getId();
        Exam exam=examService.getById(id,uid);
        if(exam!=null){
            return Result.success(exam);
        }
        return Result.error("组卷id不存在");
    }

    /**
     * 提交组卷，在表中做记录表示该组卷已提交
     * @param id 组卷id
     * @return 提交结果
     */
    @PostMapping("/submitAnswer")
    public Result submitAnswer(@RequestParam Long id, HttpServletRequest request){
        // 获取用户ID
        Long uid=userService.getByToken(request).getId();
        examService.submitAnswer(id,uid);
        return Result.success();
    }

    /**
     * 新增组卷
     * 需要管理员权限
     * @param exam 组卷实体
     * @return 新增结果
     */
    @PostMapping("/add")
    public Result add(@RequestBody Exam exam){
        examService.add(exam);
        return Result.success();
    }

}
