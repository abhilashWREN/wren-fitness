package com.wrenfitness.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.wrenfitness.model.Role;
import com.wrenfitness.model.UserProfile;


@Repository("userProfileDao")
public class UserProfileDaoImpl extends AbstractDao<Integer, UserProfile>implements UserProfileDao{

	public UserProfile findById(int id) {
		return getByKey(id);
	}

	public Role findByType(String type) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("type", type));
		return (Role) crit.uniqueResult();
	}
	
	@SuppressWarnings("unchecked")
	public List<UserProfile> findAll(){
		Criteria crit = createEntityCriteria();
		crit.addOrder(Order.asc("FirstName"));
		return (List<UserProfile>)crit.list();
	}

	@Override
	public UserProfile findByFirstName(String firstName) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("FirstName", firstName));
		return (UserProfile) crit.uniqueResult();
	}
	
}
