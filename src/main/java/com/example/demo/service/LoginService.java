package com.example.demo.service;

import com.example.demo.pojo.User;

public interface LoginService {
    public User login(User user);
    public void register(User user);
    public User getByUsername(String username);
}
