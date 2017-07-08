package com.wrenfitness.service;

import java.util.List;

import com.wrenfitness.model.User;
import com.wrenfitness.model.UserEvent;


public interface UserService {
	
	User findById(int id);
	
	User findByUserName(String userName);
	
	void saveUser(User user);
	
	void updateUser(User user);

	List<User> findAllUsers(); 
	
	List<User> findAllTrainers();
	
	boolean isUserNameUnique(Integer id, String sso);
	
	 void registerToEvent(String userName , int eventId);
	 
	public List<UserEvent> findAllRegisterTraining(String userName);
}