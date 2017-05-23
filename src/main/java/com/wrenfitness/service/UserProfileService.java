package com.wrenfitness.service;

import java.util.List;

import com.wrenfitness.model.Role;


public interface UserProfileService {

	Role findById(int id);

	Role findByType(String type);
	
	List<Role> findAll();
	
}
