package com.example.demo.service;

import com.example.demo.pojo.listening.Listening;

import java.util.List;

public interface ListeningService extends BaseService<Listening>{
    public Listening getAllById(Long id);
    public List<String> getAnswerById(Long id);
}
