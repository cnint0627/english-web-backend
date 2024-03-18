package com.example.demo.mapper;

import com.example.demo.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface LoginMapper {
    // 用户登录查询
    @Select("select id,username,is_admin as isAdmin,create_time as createTime from user where username = #{username} and password = #{password}")
    public User getByUsernameAndPassword(User user);

    // 根据用户名查询
    @Select("select * from user where username = #{username}")
    public User getByUsername(String username);

    // 根据用户OPENID查询（微信登录）
    @Select("select * from user where openid = #{openid}")
    public User getByOpenid(String openid);

    // 注册新用户
    @Insert("insert into user(username,password,openid,is_admin,create_time) values(#{username},#{password},#{openid},0,curdate())")
    public void add(User user);
}
