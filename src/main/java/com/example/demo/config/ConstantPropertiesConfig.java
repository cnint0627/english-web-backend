package com.example.demo.config;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class ConstantPropertiesConfig implements InitializingBean {
    @Value("${wx.open.appId}")
    private String appId;

    @Value("${wx.open.appSecret}")
    private String appSecret;

    @Value("${wx.open.redirectUrl}")
    private String redirectUrl;

    public static String ACCESS_KEY_ID;
    public static String ACCESS_KEY_SECRET;
    public static String ACCESS_REDIRECT_URL;

    @Override
    public void afterPropertiesSet() throws Exception{
        ACCESS_KEY_ID=appId;
        ACCESS_KEY_SECRET=appSecret;
        ACCESS_REDIRECT_URL=redirectUrl;
    }
}
