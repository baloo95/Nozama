package com.baloo.nozama.util;

import org.springframework.web.multipart.MultipartFile;

/**
 * 接受上传文件的注入
 */
public class UploadedImageFile {
    MultipartFile image;

    public MultipartFile getImage() {
        return image;
    }

    public void setImage(MultipartFile image) {
        this.image = image;
    }
}
