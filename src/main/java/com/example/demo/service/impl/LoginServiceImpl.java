package com.example.demo.service.impl;

import com.example.demo.mapper.LoginMapper;
import com.example.demo.pojo.User;
import com.example.demo.service.LoginService;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private LoginMapper loginMapper;

    @Override
    public User login(User user){
        User userLogin=loginMapper.getByUsernameAndPassword(user);
        return userLogin;
    }

    @Override
    public void register(User user){
        loginMapper.addUser(user);
    }

    @Override
    public User validate(String username){
        User user=loginMapper.getByUsername(username);
        return user;
    }
}
