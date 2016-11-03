package com.zx.medicineSale.service;

import org.springframework.stereotype.Service;

import com.zx.medicineSale.bean.User;

@Service
public interface UserService {
	
	public User login(User user);

	public int insert(User user);
	
	public User findByName(String username);
}
