package com.wrenfitness.dao;

import java.util.List;

import com.wrenfitness.model.Role;


public interface UserRoleDao {

	Role findById(int id);
	
	List<Role> findAllRoles();

}

