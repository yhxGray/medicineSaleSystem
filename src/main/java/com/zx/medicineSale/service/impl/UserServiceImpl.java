package com.zx.medicineSale.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zx.medicineSale.bean.User;
import com.zx.medicineSale.dao.UserMapper;
import com.zx.medicineSale.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	@Override
	public User login(User user) {
		return userMapper.login(user);
	}

	@Override
	public int insert(User user) {
		return userMapper.insert(user);
	}

	@Override
	public User findByName(String username) {
		return userMapper.findByName(username);
	}
	
}
