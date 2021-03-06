package com.wrenfitness.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.wrenfitness.model.User;
import com.wrenfitness.model.UserEvent;



@Repository("userDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao {

	static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);
	
	public User findById(int id) {
		User user = getByKey(id);
		return user;
	}

	public User findByUserName(String userName) {
		logger.info("userName : {}", userName);
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("userName", userName));
		User user = (User)crit.uniqueResult();
		return user;
	}

	@SuppressWarnings("unchecked")
	public List<User> findAllUsers() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("Username"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
		List<User> users = (List<User>) criteria.list();
		
		// No need to fetch userProfiles since we are not showing them on list page. Let them lazy load. 
		// Uncomment below lines for eagerly fetching of userProfiles if you want.
		/*
		for(User user : users){
			Hibernate.initialize(user.getUserProfiles());
		}*/
		return users;
	}

	public void save(User user) {
		persist(user);
	}

	public void deleteByUserName(String userName) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("Username", userName));
		User user = (User)crit.uniqueResult();
		delete(user);
	}

	@Override
	public void updateUser(User user) {
		update(user);
	}

	@Override
	public List<User> findAllTrainers() {
		Criteria criteria = createEntityCriteria();
		criteria.createAlias("userRoles", "userRoles");
		criteria.add( Restrictions.eq("userRoles.id", 3));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
		List<User> users = (List<User>) criteria.list();
		
		// No need to fetch userProfiles since we are not showing them on list page. Let them lazy load. 
		// Uncomment below lines for eagerly fetching of userProfiles if you want.
		/*
		for(User user : users){
			Hibernate.initialize(user.getUserProfiles());
		}*/
		return users;
	}
	
	public List<UserEvent> findAllRegisterTraining(String userName){
		
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("userName", userName));
		User user = (User)criteria.uniqueResult();
		List<UserEvent> eventList = user.getUserRegisterEvents();
		for(UserEvent event : eventList){
			Hibernate.initialize(event.getId());
		}
		
		return eventList;
	}
}
