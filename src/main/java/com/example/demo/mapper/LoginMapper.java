package com.example.demo.mapper;

import com.example.demo.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface LoginMapper {
    // 用户登录查询
    @Select("select * from user where username = #{username} and password = #{password}")
    public User getByUsernameAndPassword(User user);

    // 根据用户名查询
    @Select("select * from user where username = #{username}")
    public User getByUsername(String username);

    // 注册新用户
    @Insert("insert into user(username,password) values(#{username},#{password})")
    public void add(User user);
}
