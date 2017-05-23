package com.wrenfitness.service;

import java.util.List;

import com.wrenfitness.model.Role;
import com.wrenfitness.model.UserProfile;


public interface UserRoleService {

	Role findById(int id);
	
	List<Role> findAllRoles();
	
}
