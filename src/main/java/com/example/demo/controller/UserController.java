package com.example.demo.controller;

import com.example.demo.pojo.Result;
import com.example.demo.pojo.User;
import com.example.demo.service.UserService;
import com.example.demo.utils.JwtUtils;
import io.jsonwebtoken.Claims;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/user")
@CrossOrigin
public class UserController {
    @Autowired
    private UserService userService;

    /**
     * 根据请求头中的token密钥获取用户信息
     * @return 获取结果
     */
    @GetMapping("/getByToken")
    public Result getByToken(HttpServletRequest request){
        return Result.success(userService.getByToken(request));
    }

    /**
     * 查看做过的阅读历史记录
     * @return 获取结果
     */
    @GetMapping("/getRecord/reading")
    public Result getReadingRecord(HttpServletRequest request){
        Long uid=userService.getByToken(request).getId();
        return Result.success(userService.getReadingRecord(uid));
    }

    /**
     * 查看做过的听力历史记录
     * @return 获取结果
     */
    @GetMapping("/getRecord/listening")
    public Result getListeningRecord(HttpServletRequest request){
        Long uid=userService.getByToken(request).getId();
        return Result.success(userService.getListeningRecord(uid));
    }

    /**
     * 查看做过的写作历史记录
     * @return 获取结果
     */
    @GetMapping("/getRecord/writing")
    public Result getWritingRecord(HttpServletRequest request){
        Long uid=userService.getByToken(request).getId();
        return Result.success(userService.getWritingRecord(uid));
    }

}
