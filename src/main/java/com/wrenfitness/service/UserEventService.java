package com.wrenfitness.service;

import com.wrenfitness.model.UserEvent;

public interface UserEventService {
	
	public UserEvent findById(int eventId);
	
	public void updateCapacity(int eventid);

}
