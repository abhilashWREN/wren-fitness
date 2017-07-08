package com.wrenfitness.dao;

import java.util.List;

import com.wrenfitness.model.UserEvent;
import com.wrenfitness.model.User;

public interface UserEventDao {

	UserEvent findById(int id);

	UserEvent findByTitle(String title);

	void save(UserEvent event);

	//void deleteByUserName(String userName);

	List<UserEvent> findAllEvents();
	
	public void updateCapacity(int eventid);
}
