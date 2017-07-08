package com.wrenfitness.dao;

import java.util.List;

import com.wrenfitness.model.User;
import com.wrenfitness.model.UserEvent;


public interface UserDao {

	User findById(int id);
	
	User findByUserName(String userName);
	
	void save(User user);
	
	void deleteByUserName(String userName);
	
	List<User> findAllUsers();
	
	List<User> findAllTrainers();
	
	void updateUser(User user);
	
	public List<UserEvent> findAllRegisterTraining(String userName);

}

