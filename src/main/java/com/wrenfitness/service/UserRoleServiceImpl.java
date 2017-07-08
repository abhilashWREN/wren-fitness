package com.wrenfitness.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wrenfitness.dao.UserProfileDao;
import com.wrenfitness.dao.UserRoleDao;
import com.wrenfitness.model.Role;
import com.wrenfitness.model.UserProfile;
import com.wrenfitness.model.UserRole;


/*@Service("userRoleService")
@Transactional*/
public class UserRoleServiceImpl implements UserRoleService{
	
	/*@Autowired
	UserRoleDao dao;

	@Override
	public UserRole findByAccountId(int id) {
		return dao.findByAccountId(id);
	}

	@Override
	public List<UserRole> findAllUserRoles() {
		return dao.findAllUserRoles();
	}*/
}
