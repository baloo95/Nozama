package com.baloo.nozama.service;

import com.baloo.nozama.pojo.User;

import java.util.List;

public interface UserService {
    void add(User u);
    void delete(int id);
    void update(User u);
    User get(int id);
    List list();
    boolean isExist(String name);
    User get(String name, String password);
}
