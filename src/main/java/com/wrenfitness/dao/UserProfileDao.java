package com.wrenfitness.dao;

import java.util.List;

import com.wrenfitness.model.Role;


public interface UserProfileDao {

	List<Role> findAll();
	
	Role findByType(String type);
	
	Role findById(int id);
}
