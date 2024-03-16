package com.example.demo.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.example.demo.pojo.Listening;
import com.example.demo.pojo.Reading;
import com.example.demo.pojo.Result;
import com.example.demo.service.ListeningService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/listening")
@CrossOrigin
public class ListeningController {
    @Autowired
    private ListeningService listeningService;

    /**
     * 获取所有听力的简略信息（id，标题）
     * @return 包含所有听力简略信息的列表
     */
    @GetMapping("/list")
    public Result list(){
        return Result.success(listeningService.list());
    }

    /**
     * 分页获取听力的简略信息（id，标题）
     * @return 包含听力简略信息的列表和听力总个数
     */
    @GetMapping("/page")
    public Result page(int pageNum, int pageSize){
        return Result.success(listeningService.page(pageNum,pageSize));
    }

    /**
     * 根据id获取听力除答案外的全部信息
     * @param id 听力id
     * @return 指定id听力除答案外的全部信息
     */
    @GetMapping("/getById")
    public Result getById(@RequestParam Long id){
        Listening listening=listeningService.getById(id);
        if(listening!=null){
            return Result.success(listening);
        }
        return Result.error("听力id不存在");
    }

    /**
     * 根据id获取听力的全部信息
     * 需要管理员权限
     * @param id 听力id
     * @return 指定id听力的全部信息
     */
    @GetMapping("/getAllById")
    public Result getAllById(@RequestParam Long id){
        Listening listening=listeningService.getAllById(id);
        if(listening!=null){
            return Result.success(listening);
        }
        return Result.error("听力id不存在");
    }

    /**
     * 提交并检查听力答案
     * @param id 听力id
     * @param records 用户答案
     * @return 答题结果
     */
    @PostMapping("/submitAnswer")
    public Result submitAnswer(@RequestParam Long id, @RequestBody List<String> records){
        List<String> answers=listeningService.getAnswerById(id);
        if(answers.isEmpty()){
            return Result.error("听力id不存在");
        }
        if(answers.size()!=records.size()){
            return Result.error("用户提交答案数目与实际不符");
        }
        List<Map> result=new ArrayList<>();
        for(int index=0;index<answers.size();index++) {
            // 对用户答案进行评判
            Map<String, Object> question = new HashMap<>();
            String answer=answers.get(index);
            String record=records.get(index);
            question.put("answer", answer);
            question.put("record", record);
            question.put("isCorrect", answer.equals(record));
            result.add(question);
        }
        return Result.success(result);
    }

    /**
     * 新增听力
     * 需要管理员权限
     * @param listening 听力实体
     * @return 新增结果
     */
    @PostMapping("/add")
    public Result add(@RequestBody Listening listening){
        listeningService.add(listening);
        return Result.success();
    }

    /**
     * 编辑听力
     * 需要管理员权限
     * @param listening 听力实体
     * @return 编辑结果
     */
    @PostMapping("/edit")
    public Result edit(@RequestBody Listening listening){
        if(listeningService.getById(listening.getId())!=null) {
            listeningService.edit(listening);
            return Result.success();
        }
        return Result.error(" 听力id不存在");
    }


    /**
     * 根据id删除文章
     * 需要管理员权限
     * @param id 文章id
     * @return 删除结果
     */
    @PostMapping("/delete")
    public Result delete(@RequestParam Long id){
        if(listeningService.getById(id)!=null){
            // 该id文章存在，删除
            listeningService.delete(id);
            return Result.success();
        }
        return Result.error("听力id不存在");
    }
}
