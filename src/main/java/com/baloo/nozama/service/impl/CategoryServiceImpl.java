package com.baloo.nozama.service.impl;

import com.baloo.nozama.mapper.CategoryMapper;
import com.baloo.nozama.pojo.Category;
import com.baloo.nozama.pojo.CategoryExample;
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
     * PageHelper查询所有Category的id,name
     */
    @Override
    public List<Category> list() {
        /**
         * 传递CategoryExample，通过其id排序
         */
        CategoryExample example =new CategoryExample();
        example.setOrderByClause("id desc");
        return categoryMapper.selectByExample(example);
    }
    /**
     * 增加Category
     */
    @Override
    public void add(Category category) {
        categoryMapper.insert(category);
    }
    /**
     * 删除Category
     */
    @Override
    public void delete(int id) {
        categoryMapper.deleteByPrimaryKey(id);
    }
    /**
     * 通过id获取Category
     */
    @Override
    public Category get(int id) {
        return categoryMapper.selectByPrimaryKey(id);
    }
    /**
     * 修改Category
     */
    @Override
    public void update(Category category) {
        categoryMapper.updateByPrimaryKeySelective(category);
    }
}
