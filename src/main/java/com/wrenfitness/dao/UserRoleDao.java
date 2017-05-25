package com.wrenfitness.dao;

import java.util.List;

import com.wrenfitness.model.UserRole;


public interface UserRoleDao {

	UserRole findByAccountId(int id);
	
	List<UserRole> findAllUserRoles();

}

