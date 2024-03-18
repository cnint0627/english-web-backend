package com.example.demo.controller;


import com.example.demo.pojo.listening.Listening;
import com.example.demo.pojo.QuestionRecord;
import com.example.demo.pojo.Result;
import com.example.demo.service.ListeningService;
import com.example.demo.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/listening")
@CrossOrigin
@Slf4j
public class ListeningController {
    @Autowired
    private ListeningService listeningService;
    @Autowired
    private UserService userService;
    @Autowired
    private FileController fileController;


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
    public Result getById(@RequestParam Long id,HttpServletRequest request){
        // 获取用户ID
        Long uid=userService.getByToken(request).getId();
        Listening listening=listeningService.getById(id,uid);
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
    public Result submitAnswer(@RequestParam Long id, @RequestBody List<String> records, HttpServletRequest request){
        // 获取用户ID
        Long uid=userService.getByToken(request).getId();
        List<String> answerList=listeningService.getAnswerById(id);
        if(answerList.isEmpty()){
            return Result.error("听力id不存在");
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
            // 比较答案的时候要把末尾的\n去掉
            questionRecord.setIsCorrect(questionRecord.getAnswer().trim().equals(questionRecord.getRecord())?1:0);
            questionRecordList.add(questionRecord);
        }
        listeningService.submitAnswer(questionRecordList);
        return Result.success(questionRecordList);
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
        if(listeningService.getById(listening.getId(),null)!=null) {
            listeningService.edit(listening);
            return Result.success();
        }
        return Result.error(" 听力id不存在");
    }


    /**
     * 根据id删除听力
     * 需要管理员权限
     * @param id 听力id
     * @return 删除结果
     */
    @PostMapping("/delete")
    public Result delete(@RequestParam Long id){
        Listening listening=listeningService.getById(id,null);
        if(listening!=null){
            // 该id听力存在，删除
            listeningService.delete(id);
            // 删除听力材料对应的音频文件
            try {
                fileController.removeObject("audios", listening.getAudioPath());
            }catch(Exception e){
                log.error(e.getMessage());
            }
            return Result.success();
        }
        return Result.error("听力id不存在");
    }
}
