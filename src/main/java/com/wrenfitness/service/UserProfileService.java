package com.wrenfitness.service;

import java.util.List;

import com.wrenfitness.model.Role;
import com.wrenfitness.model.UserProfile;


public interface UserProfileService {

	UserProfile findById(int id);
	
	UserProfile findByFirstName(String firstName);
	
	List<UserProfile> findAll();
	
}
