package com.example.demo.controller;

import com.example.demo.pojo.QuestionRecord;
import com.example.demo.pojo.Result;
import com.example.demo.pojo.writing.Writing;
import com.example.demo.service.UserService;
import com.example.demo.service.WritingService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/writing")
@CrossOrigin
public class WritingController {
    @Autowired
    private WritingService writingService;
    @Autowired
    private UserService userService;

    /**
     * 获取所有写作材料的简略信息（id，标题）
     * @return 包含所有材料简略信息的列表
     */
    @GetMapping("/list")
    public Result list() {
        return Result.success(writingService.list());
    }

    /**
     * 分页获取写作材料的简略信息（id，标题）
     * @return 包含写作材料简略信息的列表和材料总个数
     */
    @GetMapping("/page")
    public Result page(@RequestParam int pageNum, @RequestParam int pageSize) {
        return Result.success(writingService.page(pageNum, pageSize));
    }

    /**
     * 根据id获取写作材料的全部信息
     * @param id 写作材料id
     * @return 指定id写作材料的全部信息
     */
    @GetMapping("/getById")
    public Result getById(@RequestParam Long id, HttpServletRequest request) {
        // 获取用户ID
        Long uid = userService.getByToken(request).getId();
        Writing writing = writingService.getById(id, uid);
        if (writing != null) {
            return Result.success(writing);
        }
        return Result.error("写作材料id不存在");
    }

    /**
     * 提交作文
     * @param id 写作材料id
     * @param record 用户作文
     * @return 提交结果
     */
    @PostMapping("/submitAnswer")
    public Result submitAnswer(@RequestParam Long id, @RequestParam String record, HttpServletRequest request){
        // 获取用户ID
        Long uid=userService.getByToken(request).getId();
        List<QuestionRecord> questionRecordList=new ArrayList<>();
        QuestionRecord questionRecord=new QuestionRecord();
        questionRecord.setRecord(record);
        questionRecord.setUid(uid);
        questionRecord.setTextId(id);
        questionRecordList.add(questionRecord);
        writingService.submitAnswer(questionRecordList);
        return Result.success();
    }

    /**
     * 新增文章
     * 需要管理员权限
     * @param writing 文章实体
     * @return 新增结果
     */
    @PostMapping("/add")
    public Result add(@RequestBody Writing writing){
        writingService.add(writing);
        return Result.success();
    }

    /**
     * 编辑文章
     * 需要管理员权限
     * @param writing 文章实体
     * @return 编辑结果
     */
    @PostMapping("/edit")
    public Result edit(@RequestBody Writing writing){
        if(writingService.getById(writing.getId(),null)!=null) {
            writingService.edit(writing);
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
        if(writingService.getById(id,null)!=null){
            // 该id文章存在，删除
            writingService.delete(id);
            return Result.success();
        }
        return Result.error("文章id不存在");
    }
}
