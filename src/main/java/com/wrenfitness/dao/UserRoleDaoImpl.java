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



@Repository("userRoleDao")
public class UserRoleDaoImpl extends AbstractDao<Integer, Role> implements UserRoleDao {

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
	public Role findById(int id) {
		// TODO Auto-generated method stub
		Role role = getByKey(id);
		return role;
	}

	@Override
	public List<Role> findAllRoles() {
		// TODO Auto-generated method stub
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("RoleID"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
		List<Role> roles = (List<Role>) criteria.list();
		
		// No need to fetch userProfiles since we are not showing them on list page. Let them lazy load. 
		// Uncomment below lines for eagerly fetching of userProfiles if you want.
		/*
		for(User user : users){
			Hibernate.initialize(user.getUserProfiles());
		}*/
		return roles;
	}

}
