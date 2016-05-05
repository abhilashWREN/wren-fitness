package com.wrenfitness.tests;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration(locations="webApplicationContextTest.xml")
public class hibernateTest {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Test
	public void checkHibernateConfig() {
		if(sessionFactory == null)
		{
			System.out.println("NULL");
		}
		Session session = sessionFactory.getCurrentSession();
		
		assertNotNull(sessionFactory);
		assertNotNull(session);
		
	}
}
