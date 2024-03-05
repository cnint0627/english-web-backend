package com.example.demo.controller;

import com.example.demo.pojo.Reading;
import com.example.demo.pojo.Result;
import com.example.demo.service.ReadingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/reading")
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
     * @param reading 文章实体
     * @return 新增结果
     */
    @PostMapping("addReading")
    public Result addReading(@RequestBody Reading reading){
        /**
         * reading.question为JSON格式，格式如下
         * reading.question={
         *  "1":{
         *      "title":"title1",
         *      "option":["option1","option2","option3","option4"]
         *      },
         *  "2":{
         *      "title":"title2",
         *      "option":["option1","option2","option3","option4"]
         *      }
         *  }
         */
        readingService.addReading(reading);
        return Result.success();
    }
}
