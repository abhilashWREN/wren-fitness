package com.wrenfitness.dao;

import javax.annotation.Resource;
import javax.xml.bind.annotation.XmlTransient;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.wrenfitness.domain.User;

import static org.hibernate.criterion.Restrictions.eq;

@Component
public class userDAO {

	@Autowired
	protected SessionFactory sessionFactory;
	
	public userDAO() {
	}
	
	public User getUser(int userId) {
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(User.class);
        criteria.add(eq("userId", userId));
        return (User) criteria.uniqueResult();
	}
	
}
