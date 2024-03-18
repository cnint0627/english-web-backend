package com.example.demo.service;

import com.example.demo.pojo.listening.Listening;
import com.example.demo.pojo.User;
import com.example.demo.pojo.reading.Reading;
import com.example.demo.pojo.writing.Writing;
import jakarta.servlet.http.HttpServletRequest;

import java.util.List;

public interface UserService {
    public User getByToken(HttpServletRequest request);
    public List<Reading> getReadingRecord(Long id);
    public List<Listening> getListeningRecord(Long id);
    public List<Writing> getWritingRecord(Long id);
}
