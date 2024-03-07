package com.example.demo.controller;
import com.example.demo.config.MinioConfig;
import com.example.demo.pojo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("/file")
public class FileController {

    @Autowired
    MinioConfig minioConfig;

    // 上传
    @PostMapping("/upload")
    public Result upload(@RequestParam("file") MultipartFile multipartFile, @RequestParam("bucketName") String bucketName) throws Exception {
        return Result.success(this.minioConfig.putObject(multipartFile,bucketName));
    }

    // 下载文件
    @GetMapping("/download")
    public Result download(String fileName, String bucketName, HttpServletResponse response) {
        this.minioConfig.download(fileName,bucketName,response);
        return Result.success();
    }

    // 列出所有存储桶名称
    @PostMapping("/list")
    public Result list() throws Exception {
        return Result.success(this.minioConfig.listBucketNames());
    }

    // 创建存储桶
    @PostMapping("/createBucket")
    public Result createBucket(String bucketName) throws Exception {
        if(this.minioConfig.makeBucket(bucketName)){
            return Result.success();
        }
        return Result.error("操作失败");
    }

    // 删除存储桶
    @PostMapping("/deleteBucket")
    public Result deleteBucket(String bucketName) throws Exception {
        if(this.minioConfig.removeBucket(bucketName)){
            return Result.success();
        }
        return Result.error("操作失败");
    }

    // 列出存储桶中的所有对象名称
    @PostMapping("/listObjectNames")
    public Result listObjectNames(String bucketName) throws Exception {
        return Result.success(this.minioConfig.listObjectNames(bucketName));
    }

    // 删除一个对象
    @PostMapping("/removeObject")
    public Result removeObject(String bucketName, String objectName) throws Exception {
        if(this.minioConfig.removeObject(bucketName, objectName)){
            return Result.success();
        }
        return Result.error("操作失败");
    }
}


