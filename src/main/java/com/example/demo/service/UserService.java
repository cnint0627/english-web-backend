package com.example.demo.service;

import com.example.demo.pojo.User;
import com.example.demo.pojo.Reading;
import jakarta.servlet.http.HttpServletRequest;

import java.util.List;

public interface UserService {
    public User getByToken(HttpServletRequest request);
    public List<Reading> getReadingRecord(Long id);
}
