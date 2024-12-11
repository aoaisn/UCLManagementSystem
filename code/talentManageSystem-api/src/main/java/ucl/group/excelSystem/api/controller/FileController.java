package com.example.filemanager.controller;

import com.example.filemanager.model.*;
import com.example.filemanager.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/files")
public class FileController {

    @Autowired
    private FileService fileService;

    /**
     * 获取文件列表
     * 前端调用：GET /api/files?parentId={parentId}&keyword={keyword}
     */
    @GetMapping
    public ResponseEntity<List<FileResponse>> listFiles(
            @RequestParam(required = false) Long parentId,
            @RequestParam(required = false) String keyword) {
        return ResponseEntity.ok(fileService.getFiles(parentId, keyword));
    }

    /**
     * 创建文件夹
     * 前端调用：POST /api/files/folders
     */
    @PostMapping("/folders")
    public ResponseEntity<Void> createFolder(@RequestBody CreateFolderRequest request) {
        fileService.createFolder(request);
        return ResponseEntity.ok().build();
    }

    /**
     * 重命名文件
     * 前端调用：PATCH /api/files/rename
     */
    @PatchMapping("/rename")
    public ResponseEntity<Void> renameFile(@RequestBody RenameFileRequest request) {
        fileService.renameFile(request);
        return ResponseEntity.ok().build();
    }

    /**
     * 删除文件
     * 前端调用：DELETE /api/files
     */
    @DeleteMapping
    public ResponseEntity<Void> deleteFiles(@RequestBody List<Long> ids) {
        fileService.deleteFiles(ids);
        return ResponseEntity.ok().build();
    }

    /**
     * 移动文件
     * 前端调用：POST /api/files/move
     */
    @PostMapping("/move")
    public ResponseEntity<Void> moveFiles(@RequestBody MoveRequest request) {
        fileService.moveFiles(request.getIds(), request.getTargetFolderId());
        return ResponseEntity.ok().build();
    }
}
