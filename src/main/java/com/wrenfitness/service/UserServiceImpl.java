package com.wrenfitness.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wrenfitness.dao.UserDao;
import com.wrenfitness.model.User;
import com.wrenfitness.model.UserEvent;


@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao dao;

	@Autowired
    private PasswordEncoder passwordEncoder;
	
	@Autowired
	private UserEventService userEventService;
	
	public User findById(int id) {
		return dao.findById(id);
	}

	public void saveUser(User user) {
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		dao.save(user);
	}

	/*
	 * Since the method is running with Transaction, No need to call hibernate update explicitly.
	 * Just fetch the entity from db and update it with proper values within transaction.
	 * It will be updated in db once transaction ends. 
	 */
	public void updateUser(User user) {
		User entity = dao.findById(user.getId());
		if(entity!=null){
			entity.setEvents(user.getEvents());
		}
		dao.updateUser(entity);
	}

	public List<User> findAllUsers() {
		return dao.findAllUsers();
	}

	public boolean isUserNameUnique(Integer id, String userName) {
		User user = findByUserName(userName);
		return ( user == null || ((id != null) && (user.getId() == id)));
	}

	@Override
	public User findByUserName(String userName) {
		User user = dao.findByUserName(userName);
		return user;
	}

	@Override
	public List<User> findAllTrainers() {
		return dao.findAllTrainers();
	}
	
	@Override
	public void registerToEvent(String userName , int eventId){
		User user = findByUserName(userName);
		
		UserEvent event = userEventService.findById(eventId);
		List<UserEvent> eventList = user.getUserRegisterEvents();
		eventList.add(event);
		user.setUserRegisterEvents(eventList);
		
		dao.updateUser(user);
		
		userEventService.updateCapacity(eventId);
		
	}
	
	public List<UserEvent> findAllRegisterTraining(String userName){
		return dao.findAllRegisterTraining(userName);
	}
	
}
