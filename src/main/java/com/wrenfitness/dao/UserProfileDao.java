package com.wrenfitness.dao;

import java.util.List;

import com.wrenfitness.model.Role;
import com.wrenfitness.model.UserProfile;


public interface UserProfileDao {

	List<UserProfile> findAll();
	
	UserProfile findByFirstName(String firstName);
	
	UserProfile findById(int id);
}
