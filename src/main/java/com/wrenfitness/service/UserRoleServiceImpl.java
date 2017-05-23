package com.wrenfitness.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wrenfitness.dao.UserProfileDao;
import com.wrenfitness.dao.UserRoleDao;
import com.wrenfitness.model.Role;
import com.wrenfitness.model.UserProfile;


@Service("userRoleService")
@Transactional
public class UserRoleServiceImpl implements UserRoleService{
	
	@Autowired
	UserRoleDao dao;

	@Override
	public Role findById(int id) {
		return dao.findById(id);
	}

	@Override
	public List<Role> findAllRoles() {
		return dao.findAllRoles();
	}
}
