package com.baloo.nozama.service.impl;

import com.baloo.nozama.mapper.CategoryMapper;
import com.baloo.nozama.pojo.Category;
import com.baloo.nozama.service.CategoryService;
import com.baloo.nozama.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CategoryServiceImpl implements CategoryService{
    @Autowired
    CategoryMapper categoryMapper;
    /**
     * 查询所有Category的id,name
     */
//    @Override
//    public List<Category> list(Page page) {
//        return categoryMapper.list(page);
//    }
//
//    /**
//     * 查询Category个数
//     */
//    @Override
//    public int total() {
//        return categoryMapper.total();
//    }

    /**
     * PageHelper查询所有Category的id,name
     */
    @Override
    public List<Category> list() {
        return categoryMapper.list();
    }

    /**
     * 增加Category
     */
    @Override
    public void add(Category category) {
        categoryMapper.add(category);
    }
    /**
     * 删除Category
     */
    @Override
    public void delete(int id) {
        categoryMapper.delete(id);
    }
    /**
     * 通过id获取Category
     */
    @Override
    public Category get(int id) {
        return categoryMapper.get(id);
    }
    /**
     * 修改Category
     */
    @Override
    public void update(Category category) {
        categoryMapper.update(category);
    }
}
