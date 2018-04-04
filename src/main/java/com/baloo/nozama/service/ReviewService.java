package com.baloo.nozama.service;

import com.baloo.nozama.pojo.Review;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ReviewService {
    void add(Review c);

    void delete(int id);
    void update(Review c);
    Review get(int id);
    List list(int pid);

    int getCount(int pid);
}
