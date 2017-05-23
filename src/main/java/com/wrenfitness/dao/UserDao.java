package com.wrenfitness.dao;

import java.util.List;

import com.wrenfitness.model.User;


public interface UserDao {

	User findById(int id);
	
	User findByUserName(String userName);
	
	void save(User user);
	
	void deleteByUserName(String userName);
	
	List<User> findAllUsers();

}

