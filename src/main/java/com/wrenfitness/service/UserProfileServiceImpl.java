package com.wrenfitness.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wrenfitness.dao.UserProfileDao;
import com.wrenfitness.model.Role;
import com.wrenfitness.model.UserProfile;


@Service("userProfileService")
@Transactional
public class UserProfileServiceImpl implements UserProfileService{
	
	@Autowired
	UserProfileDao dao;

	@Override
	public UserProfile findById(int id) {
		return dao.findById(id);
	}

	@Override
	public UserProfile findByFirstName(String firstName) {
		return dao.findByFirstName(firstName);
	}

	@Override
	public List<UserProfile> findAll() {
		return dao.findAll();
	}
}
