package com.wrenfitness.service;

import java.util.List;

import com.wrenfitness.model.User;


public interface UserService {
	
	User findById(int id);
	
	User findByUserName(String userName);
	
	void saveUser(User user);
	
	void updateUser(User user);

	List<User> findAllUsers(); 
	
	boolean isUserNameUnique(Integer id, String sso);

}