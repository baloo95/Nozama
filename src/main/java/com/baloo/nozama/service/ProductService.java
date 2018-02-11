package com.baloo.nozama.service;

import com.baloo.nozama.pojo.Product;
import org.springframework.stereotype.Service;

import java.util.List;

public interface ProductService {
    void add(Product p);
    void delete(int id);
    void update(Product p);
    Product get(int id);
    List list(int cid);
}
