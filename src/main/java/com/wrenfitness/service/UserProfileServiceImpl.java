package com.wrenfitness.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wrenfitness.dao.UserProfileDao;
import com.wrenfitness.model.Role;


@Service("userProfileService")
@Transactional
public class UserProfileServiceImpl implements UserProfileService{
	
	@Autowired
	UserProfileDao dao;
	
	public Role findById(int id) {
		return dao.findById(id);
	}

	public Role findByType(String type){
		return dao.findByType(type);
	}

	public List<Role> findAll() {
		return dao.findAll();
	}
}
