package com.zx.medicineSale.dao;

import org.springframework.stereotype.Repository;

import com.zx.medicineSale.bean.User;
@Repository
public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    User login(User user);
    
    User findByName(String username);
}