package com.baloo.nozama.service;

import com.baloo.nozama.pojo.Category;
import com.baloo.nozama.util.Page;

import java.util.List;

public interface CategoryService {
//    /**
//     * 查询所有Category的id,name
//     */
//    List<Category> list(Page page);
//    /**
//     * 查询Category个数
//     */
//    int total();
    /**
     * PageHelper查询所有Category的id,name
     */
    List<Category> list();
    /**
     * 增加Category
     */
    void add(Category category);
    /**
     * 删除Category
     */
    void delete(int id);
    /**
     * 通过id获取Category
     */
    Category get(int id);
    /**
     * 修改Category
     */
    void update(Category category);
}
