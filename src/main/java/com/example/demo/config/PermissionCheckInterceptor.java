package com.example.demo.config;

import com.alibaba.fastjson.JSONObject;
import com.example.demo.pojo.Result;
import com.example.demo.utils.JwtUtils;
import io.jsonwebtoken.Claims;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.HandlerInterceptor;

import java.util.HashMap;
import java.util.Map;

@Component
@Slf4j
// 权限拦截器
public class PermissionCheckInterceptor implements HandlerInterceptor {
    // 前置方式
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{
        System.out.println("preHandle...");
        // 1.获取请求url
        // 2.判断请求url中是否包含login，如果包含，说明是登录操作，放行
        // 3.获取请求头中的令牌（token）
        String token=request.getHeader("token");
        log.info("从请求头中获取的令牌：{}",token);

        // 4.判断令牌是否存在，如果不存在，返回错误结果（未登录）
        if(!StringUtils.hasLength(token)){
            log.info("token不存在");
            Result responseResult= Result.error("NOT_LOGIN");
            String json= JSONObject.toJSONString(responseResult);
            response.setContentType("application/json;charset=utf-8");
            response.getWriter().write(json);
            return false;   // 不放行
        }

        // 5.解析token，如果解析失败，返回错误结果（未登录）
        try{
            Claims claims = JwtUtils.parseJWT(token);
            if((int)claims.get("isAdmin")!=1){
                // 6.验证用户权限，如果用户是非管理员，返回错误结果（无权限）
                log.info("无操作权限");
                Result responseResult= Result.error("无操作权限");
                String json=JSONObject.toJSONString(responseResult);
                response.setContentType("application/json;charset=utf-8");
                response.getWriter().write(json);
                return false;   // 不放行
            }
        }catch(Exception e){
            log.info("令牌解析失败");
            Result responseResult= Result.error("NOT_LOGIN");
            String json=JSONObject.toJSONString(responseResult);
            response.setContentType("application/json;charset=utf-8");
            response.getWriter().write(json);
            return false;   // 不放行
        }

        // 7.放行
        return true;
    }
}
