package com.example.demo.pojo;

import lombok.Data;

@Data
public class Result<T> {
    private String msg;
    private T data;
    public static Result success(){
        Result result=new Result<>();
        result.setMsg("操作成功");
        return result;
    }

    public static <T> Result<T> success(T data){
        Result<T> result=new Result<>();
        result.setMsg("操作成功");
        result.setData(data);
        return result;
    }

    public static Result error(String msg){
        Result result=new Result<>();
        result.setMsg(msg);
        return result;
    }
}
