package com.wrenfitness.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.wrenfitness.model.Role;
import com.wrenfitness.model.User;
import com.wrenfitness.model.UserRole;



@Repository("userRoleDao")
public class UserRoleDaoImpl extends AbstractDao<Integer, UserRole> implements UserRoleDao {

	static final Logger logger = LoggerFactory.getLogger(UserRoleDaoImpl.class);

/*	@SuppressWarnings("unchecked")
	public List<User> findAllUsers() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("Username"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
		List<User> users = (List<User>) criteria.list();
		
		// No need to fetch userProfiles since we are not showing them on list page. Let them lazy load. 
		// Uncomment below lines for eagerly fetching of userProfiles if you want.
		
		for(User user : users){
			Hibernate.initialize(user.getUserProfiles());
		}
		return users;
	}*/

	/*public void save(User user) {
		persist(user);
	}

	public void deleteByUserName(String userName) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("Username", userName));
		User user = (User)crit.uniqueResult();
		delete(user);
	}*/

	@Override
	public List<UserRole> findAllUserRoles() {
		// TODO Auto-generated method stub
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("AccountID"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
		List<UserRole> roles = (List<UserRole>) criteria.list();
		
		// No need to fetch userProfiles since we are not showing them on list page. Let them lazy load. 
		// Uncomment below lines for eagerly fetching of userProfiles if you want.
		/*
		for(User user : users){
			Hibernate.initialize(user.getUserProfiles());
		}*/
		return roles;
	}

	@Override
	public UserRole findByAccountId(int id) {
		// TODO Auto-generated method stub
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("AccountID"));
		criteria.add(Restrictions.eq("AccountID", id));
		return (UserRole)criteria.uniqueResult();
	}

}
