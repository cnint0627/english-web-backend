package com.example.demo.pojo;

import lombok.Data;

@Data
public class User {
    private Long id;
    // 用户名
    private String username;
    // 密码
    private String password;
    // 用户权限

}
