package com.wrenfitness.dao;

import javax.annotation.Resource;
import javax.xml.bind.annotation.XmlTransient;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.wrenfitness.domain.User;

import static org.hibernate.criterion.Restrictions.eq;

@Transactional
public class userDAO {
	
    
	private SessionFactory sessionFactory;
 
	public userDAO() {
	}

	 public void setSessionFactory(SessionFactory sessionFactory) {
	        this.sessionFactory = sessionFactory;
	    }

	public User getUser(int userId) {
		//System.out.println(context.getBeanDefinitionNames());
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(User.class);
        criteria.add(eq("userId", userId));
        return (User) criteria.uniqueResult();
	}
	
}
