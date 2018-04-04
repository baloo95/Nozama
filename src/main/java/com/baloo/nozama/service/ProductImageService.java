package com.baloo.nozama.service;

import com.baloo.nozama.pojo.Product;
import com.baloo.nozama.pojo.ProductImage;

import java.util.List;

public interface ProductImageService {
    String type_single = "type_single";
    String type_detail = "type_detail";

    void add(ProductImage pi);
    void delete(int id);
    void update(ProductImage pi);
    ProductImage get(int id);
    List list(int pid,String type);
}
