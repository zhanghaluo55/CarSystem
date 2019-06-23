package com.zsg.dao;

import java.util.List;

import com.zsg.bean.User;

public interface IUserDao_mag {
	//¹ÜÀíÔ±µÇÂ½
	public boolean managerLogin(String userName,String password);
	public void save(User user);
	public List<User> findAll();
	public List<User> findKeyWord(String type,String keyword);
	public User findById(int uid);
	public int deleteUser(int uid);
}
