package com.wrenfitness.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wrenfitness.dao.UserEventDao;
import com.wrenfitness.model.UserEvent;

@Service("userEventService")
@Transactional
public class UserEventServiceImpl implements UserEventService{
	
	@Autowired
	UserEventDao userEventDao;
	
	@Override
	public UserEvent findById(int eventId){
		return  userEventDao.findById(eventId);	
	}
	
	@Override
	public void updateCapacity(int eventid){
		userEventDao.updateCapacity(eventid);
	}

}
