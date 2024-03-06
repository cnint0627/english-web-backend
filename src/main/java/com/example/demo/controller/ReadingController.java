package com.example.demo.controller;

import com.alibaba.fastjson.JSONObject;
import com.example.demo.pojo.Reading;
import com.example.demo.pojo.Result;
import com.example.demo.service.ReadingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/reading")
@CrossOrigin
public class ReadingController {
    @Autowired
    private ReadingService readingService;

    /**
     * 获取所有文章
     * @return 包含所有文章的数组
     */
    @GetMapping("/list")
    public Result list(){
        return Result.success(readingService.list());
    }

    /**
     * 根据id获取文章
     * @param id 文章id
     * @return 指定id的文章
     */
    @PostMapping("/getById")
    public Result getById(@RequestBody String id){
        Reading reading=readingService.getById(id);
        if(reading!=null){
            return Result.success(reading);
        }
        return Result.error("文章id不存在");
    }

    /**
     * 新增文章
     * @param reading 文章JSON
     * @return 新增结果
     */
    @PostMapping("add")
    public Result add(@RequestBody JSONObject reading){
        readingService.add(reading);
        return Result.success();
    }
}
