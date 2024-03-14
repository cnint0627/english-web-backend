package com.example.demo.controller;

import com.example.demo.pojo.Result;
import com.example.demo.pojo.User;
import com.example.demo.service.LoginService;
import com.example.demo.utils.JwtUtils;
import io.jsonwebtoken.Claims;
import jakarta.servlet.http.HttpServletRequest;
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
            claims.put("isAdmin",userLogin.getAdmin());
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
        if(loginService.getByUsername(user.getUsername())==null){
            // 用户名合法
            loginService.register(user);
            return Result.success();
        }
        return Result.error("用户名重复");
    }


    /**
     * 根据请求头中的token密钥获取用户信息
     * @return 获取结果
     */
    @GetMapping("/getByToken")
    public Result getByToken(HttpServletRequest request){
        String token=request.getHeader("token");
        try {
            Claims claims = JwtUtils.parseJWT(token);
            Map<String, Object> result=new HashMap<>();
            result.put("id",claims.get("id"));
            result.put("username",claims.get("username"));
            result.put("isAdmin",claims.get("isAdmin"));
            return Result.success(result);
        }catch(Exception e){
            return Result.error("token解析错误");
        }
    }
}
