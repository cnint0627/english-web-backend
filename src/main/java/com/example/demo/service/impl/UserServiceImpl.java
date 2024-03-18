package com.example.demo.service.impl;

import com.example.demo.mapper.UserMapper;
import com.example.demo.pojo.Listening;
import com.example.demo.pojo.Reading;
import com.example.demo.pojo.User;
import com.example.demo.service.UserService;
import com.example.demo.utils.JwtUtils;
import io.jsonwebtoken.Claims;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Slf4j
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public User getByToken(HttpServletRequest request){
        User user=new User();
        Claims claims=JwtUtils.parseJWT(request.getHeader("token"));
        user.setId(Long.parseLong(String.valueOf(claims.get("id"))));
        user.setUsername(String.valueOf(claims.get("username")));
        user.setIsAdmin(Integer.parseInt(String.valueOf(claims.get("isAdmin"))));
        return user;
    }

    @Override
    public List<Reading> getReadingRecord(Long id){
        return userMapper.getReadingRecord(id);
    }
    @Override
    public List<Listening> getListeningRecord(Long id){
        return userMapper.getListeningRecord(id);
    }
}
