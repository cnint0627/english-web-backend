package com.example.demo.controller;

import com.example.demo.pojo.Result;
import com.example.demo.pojo.User;
import com.example.demo.service.LoginService;
import com.example.demo.utils.JwtUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/user")
@CrossOrigin
public class LoginController {

    @Autowired
    private LoginService loginService;

    /**
     * 用户登录
     * @param user 用户登录账号密码
     * @return 登录成功得到的token
     */
    @PostMapping("/login")
    public Result login(@RequestBody User user){
        User userLogin=loginService.login(user);
        // 用户登录成功
        if(userLogin!=null){
            // 自定义信息
            Map<String,Object> claims=new HashMap<>();
            claims.put("id",userLogin.getId());
            claims.put("username",userLogin.getUsername());
            // 使用jwt工具类生成身份令牌
            String token= JwtUtils.generateJwt(claims);
            return Result.success(token);
        }
        return Result.error("用户名或密码错误");
    }

    /**
     * 用户注册
     * @param user 用户注册账号密码
     * @return 注册结果
     */
    @PostMapping("/register")
    public Result register(@RequestBody User user){
        if(getByUsername(user.getUsername()).getData()==null){
            // 用户名合法
            loginService.register(user);
            return Result.success();
        }
        return Result.error("用户名重复");
    }

    /**
     * 根据用户名查找用户
     * @param username 用户名
     * @return 查找结果
     */
    @PostMapping("/getByUsername")
    public Result getByUsername(@RequestBody String username){
        User user=loginService.getByUsername(username);
        if(user!=null) {
            return Result.success(user);
        }
        return Result.error("该用户不存在");
    }
}
