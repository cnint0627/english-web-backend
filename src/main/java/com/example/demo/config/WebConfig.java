package com.example.demo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.ArrayList;
import java.util.Arrays;

@Configuration
public class WebConfig implements WebMvcConfigurer {
    @Autowired
    private LoginCheckInterceptor loginCheckInterceptor;
    @Autowired
    private PermissionCheckInterceptor permissionCheckInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry){
        // 注册自定义拦截器对象
        // 用户登录拦截
        registry.addInterceptor(loginCheckInterceptor)
                .addPathPatterns("/**")
                .excludePathPatterns(
                        "/auth/**",
                        "/wx/**");//设置不拦截的请求路径
        // 用户权限拦截
        registry.addInterceptor(permissionCheckInterceptor)
                .addPathPatterns(
                        "/reading/add",
                        "/reading/edit",
                        "/reading/delete",
                        "/reading/getAllById",
                        "/listening/add",
                        "/listening/edit",
                        "/listening/delete",
                        "/listening/getAllById",
                        "/file/**"
                );
    }
}

