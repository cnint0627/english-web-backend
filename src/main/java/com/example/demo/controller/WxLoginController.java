package com.example.demo.controller;

import com.example.demo.config.ConstantPropertiesConfig;
import com.example.demo.pojo.Result;
import com.example.demo.pojo.User;
import com.example.demo.service.LoginService;
import com.example.demo.utils.HttpClientUtils;
import com.example.demo.utils.JwtUtils;
import com.google.gson.Gson;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/wx")
@CrossOrigin
@Slf4j
public class WxLoginController {
    @Autowired
    private LoginService loginService;

    /**
     * 微信登录接口-获取登录二维码
     * @return 登录成功的回调URL
     */
    @GetMapping("/getQRCode")
    public String getQRCode(){
        String redirectUrl = null;
        try {
            redirectUrl= URLEncoder.encode(ConstantPropertiesConfig.ACCESS_REDIRECT_URL, "UTF-8"); //url编码
        } catch (UnsupportedEncodingException e) {
            log.error(e.getMessage());
        }
        // 微信开放平台授权baseUrl
        String url = "https://open.weixin.qq.com/connect/qrconnect" +
                "?appid=" + ConstantPropertiesConfig.ACCESS_KEY_ID +
                "&redirect_uri=" + redirectUrl +
                "&response_type=code" +
                "&scope=snsapi_login" +
                "#wechat_redirect";
        return "redirect:" + url;
    }

    @GetMapping("/login")
    public Result login(String code){
        //向认证服务器发送请求换取access_token
        String accessTokenUrl = "https://api.weixin.qq.com/sns/oauth2/access_token" +
                "?appid=" + ConstantPropertiesConfig.ACCESS_KEY_ID +
                "&secret=" + ConstantPropertiesConfig.ACCESS_KEY_SECRET +
                "&code=" + code +
                "&grant_type=authorization_code";
        String result = null;
        try {
            result = HttpClientUtils.get(accessTokenUrl);
        } catch (Exception e) {
            log.error(e.getMessage());
        }
        //解析json字符串
        Gson gson = new Gson();
        HashMap<String, Object> map = gson.fromJson(result, HashMap.class);
        String accessToken = (String)map.get("access_token");
        String openid = (String)map.get("openid");
        //查询数据库当前用用户是否曾经使用过微信登录
        User user = loginService.getByOpenid(openid);
        if(user == null){
            //访问微信的资源服务器，获取用户信息
            String userInfoUrl = "https://api.weixin.qq.com/sns/userinfo" +
                    "?access_token=" + accessToken +
                    "&openid=" + openid;
            String resultUserInfo = null;
            try {
                resultUserInfo = HttpClientUtils.get(userInfoUrl);
            } catch (Exception e) {
                log.error(e.getMessage());
            }
            //解析json
            HashMap<String, Object> mapUserInfo = gson.fromJson(resultUserInfo, HashMap.class);
            String nickname = (String)mapUserInfo.get("nickname");
            String headimgurl = (String)mapUserInfo.get("headimgurl");
            //向数据库中插入一条记录
            user= new User();
            user.setOpenid(openid);
            user.setUsername("wxUser_"+openid);
            user.setPassword("123456");
            loginService.register(user);
        }
        // 生成jwt
        // 自定义信息
        Map<String,Object> claims=new HashMap<>();
        claims.put("id",user.getId());
        claims.put("username",user.getUsername());
        claims.put("isAdmin",user.getIsAdmin());
        // 使用jwt工具类生成身份令牌
        String token= JwtUtils.generateJwt(claims);
        //存入cookie
        //CookieUtils.setCookie(request, response, "myapplication_jwt_token", token);
        //因为端口号不同存在跨域问题，cookie不能跨域，所以这里使用url重写
        return Result.success(token);
    }

}
