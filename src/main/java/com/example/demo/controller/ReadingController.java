package com.example.demo.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.example.demo.pojo.Reading;
import com.example.demo.pojo.Result;
import com.example.demo.pojo.User;
import com.example.demo.service.LoginService;
import com.example.demo.service.ReadingService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/reading")
@CrossOrigin
public class ReadingController {
    @Autowired
    private ReadingService readingService;
    @Autowired
    private LoginController loginController;

    /**
     * 获取所有文章的简略信息（id，标题）
     * @return 包含所有文章简略信息的列表
     */
    @GetMapping("/list")
    public Result list(){
        return Result.success(readingService.list());
    }

    /**
     * 分页获取文章的简略信息（id，标题）
     * @return 包含文章简略信息的列表
     */
    @GetMapping("/page")
    public Result page(@RequestParam int pageNum,@RequestParam int pageSize){
        return Result.success(readingService.page(pageNum,pageSize));
    }

    /**
     * 根据id获取文章的全部信息
     * 如果是非管理员则隐藏文章题目的答案
     * @param id 文章id
     * @return 指定id文章的全部信息
     */
    @GetMapping("/getById")
    public Result getById(@RequestParam Long id,HttpServletRequest request){
        int isAdmin=(int)((Map)loginController.getByToken(request).getData()).get("isAdmin");
        Reading reading=readingService.getById(id,isAdmin);
        if(reading!=null){
            return Result.success(reading);
        }
        return Result.error("文章id不存在");
    }

    /**
     * 提交并检查阅读答案
     * @param id 文章id
     * @param records 用户答案
     * @return 答题结果
     */
    @PostMapping("/submitAnswer")
    public Result submitAnswer(@RequestParam Long id, @RequestBody List<String> records){
        List<String> answers=readingService.getAnswerById(id);
        if(answers.isEmpty()){
            return Result.error("文章id不存在");
        }
        if(answers.size()!=records.size()){
            return Result.error("用户提交答案数目与实际不符");
        }
        JSONArray result=new JSONArray();
        for(int index=0;index<answers.size();index++) {
            // 对用户答案进行评判
            JSONObject question = new JSONObject();
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
     * 新增文章
     * @param reading 文章JSON
     * @return 新增结果
     */
    @PostMapping("/add")
    public Result add(@RequestBody JSONObject reading){
        readingService.add(reading);
        return Result.success();
    }

    /**
     * 编辑文章
     * @param reading 文章JSON
     * @return 编辑结果
     */
    @PostMapping("/edit")
    public Result edit(@RequestBody JSONObject reading){
        if(readingService.getById(reading.getLong("id"),0)!=null) {
            readingService.edit(reading);
            return Result.success();
        }
        return Result.error("文章id不存在");
    }

    /**
     * 根据id删除文章
     * @param id 文章id
     * @return 删除结果
     */
    @PostMapping("/delete")
    public Result delete(@RequestParam Long id){
        Reading reading=readingService.getById(id,0);
        if(reading!=null){
            // 该id文章存在，删除
            readingService.delete(id);
            return Result.success();
        }
        return Result.error("文章id不存在");
    }
}
