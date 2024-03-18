package com.example.demo.service.impl;

import com.example.demo.mapper.UserMapper;
import com.example.demo.pojo.listening.Listening;
import com.example.demo.pojo.reading.Reading;
import com.example.demo.pojo.User;
import com.example.demo.pojo.writing.Writing;
import com.example.demo.service.UserService;
import com.example.demo.utils.JwtUtils;
import io.jsonwebtoken.Claims;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
        user.setCreateTime(String.valueOf(claims.get("createTime")));
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
    @Override
    public List<Writing> getWritingRecord(Long id){
        return userMapper.getWritingRecord(id);
    }
}
