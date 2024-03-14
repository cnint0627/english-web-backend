package com.example.demo.config;

import com.alibaba.fastjson.JSONObject;
import com.example.demo.pojo.Result;
import com.example.demo.utils.JwtUtils;
import io.jsonwebtoken.Claims;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
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
        Claims claims = JwtUtils.parseJWT(request.getHeader("token"));
        if((int)claims.get("isAdmin")!=1){
            // 验证用户权限，如果用户是非管理员，返回错误结果（无权限）
            log.info("无操作权限");
            Result responseResult= Result.error("无操作权限");
            String json=JSONObject.toJSONString(responseResult);
            response.setContentType("application/json;charset=utf-8");
            response.getWriter().write(json);
            return false;   // 不放行
        }
        return true;
    }
}
