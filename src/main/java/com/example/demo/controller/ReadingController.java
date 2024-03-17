package com.example.demo.controller;

import com.example.demo.pojo.QuestionRecord;
import com.example.demo.pojo.Reading;
import com.example.demo.pojo.Result;
import com.example.demo.pojo.User;
import com.example.demo.service.ReadingService;
import com.example.demo.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;


@RestController
@RequestMapping("/reading")
@CrossOrigin
public class ReadingController {
    @Autowired
    private ReadingService readingService;
    @Autowired
    private UserService userService;

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
     * @return 包含文章简略信息的列表和文章总个数
     */
    @GetMapping("/page")
    public Result page(@RequestParam int pageNum,@RequestParam int pageSize){
        return Result.success(readingService.page(pageNum,pageSize));
    }

    /**
     * 根据id获取文章除答案外的全部信息
     * @param id 文章id
     * @return 指定id文章除答案外的全部信息
     */
    @GetMapping("/getById")
    public Result getById(@RequestParam Long id, HttpServletRequest request){
        // 获取用户ID
        Long uid=userService.getByToken(request).getId();
        Reading reading=readingService.getById(id,uid);
        if(reading!=null){
            return Result.success(reading);
        }
        return Result.error("文章id不存在");
    }

    /**
     * 根据id获取文章的全部信息
     * 需要管理员权限
     * @param id 文章id
     * @return 指定id文章的全部信息
     */
    @GetMapping("/getAllById")
    public Result getAllById(@RequestParam Long id){
        Reading reading=readingService.getAllById(id);
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
    public Result submitAnswer(@RequestParam Long id, @RequestBody List<String> records, HttpServletRequest request){
        // 获取用户ID
        Long uid=userService.getByToken(request).getId();
        List<String> answerList=readingService.getAnswerById(id);
        if(answerList.isEmpty()){
            return Result.error("文章id不存在");
        }
        if(answerList.size()!=records.size()){
            return Result.error("用户提交答案数目与实际不符");
        }
        List<QuestionRecord> questionRecordList=new ArrayList<>();
        for(int index=0;index<answerList.size();index++) {
            // 对用户答案进行评判
            QuestionRecord questionRecord = new QuestionRecord();
            questionRecord.setTextId(id);
            questionRecord.setUid(uid);
            questionRecord.setAnswer(answerList.get(index));
            questionRecord.setRecord(records.get(index));
            questionRecord.setIsCorrect(questionRecord.getAnswer().equals(questionRecord.getRecord())?1:0);
            questionRecordList.add(questionRecord);
        }
        readingService.submitAnswer(questionRecordList);
        return Result.success(questionRecordList);
    }

    /**
     * 新增文章
     * 需要管理员权限
     * @param reading 文章实体
     * @return 新增结果
     */
    @PostMapping("/add")
    public Result add(@RequestBody Reading reading){
        readingService.add(reading);
        return Result.success();
    }

    /**
     * 编辑文章
     * 需要管理员权限
     * @param reading 文章实体
     * @return 编辑结果
     */
    @PostMapping("/edit")
    public Result edit(@RequestBody Reading reading){
        if(readingService.getById(reading.getId(),null)!=null) {
            readingService.edit(reading);
            return Result.success();
        }
        return Result.error("文章id不存在");
    }

    /**
     * 根据id删除文章
     * 需要管理员权限
     * @param id 文章id
     * @return 删除结果
     */
    @PostMapping("/delete")
    public Result delete(@RequestParam Long id){
        if(readingService.getById(id,null)!=null){
            // 该id文章存在，删除
            readingService.delete(id);
            return Result.success();
        }
        return Result.error("文章id不存在");
    }
}
