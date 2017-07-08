package com.wrenfitness.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.wrenfitness.model.User;
import com.wrenfitness.model.UserEvent;

@Repository("userEvent")
public class UserEventDaoImpl extends AbstractDao<Integer, UserEvent> implements UserEventDao {

	static final Logger logger = LoggerFactory.getLogger(UserEventDaoImpl.class);

	@Override
	public UserEvent findById(int id) {
		UserEvent event = getByKey(id);
		return event;
	}

	@Override
	public UserEvent findByTitle(String title) {
		logger.info("title : {}", title);
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("title", title));
		UserEvent event = (UserEvent) crit.uniqueResult();
		return event;
	}

	@Override
	public void save(UserEvent event) {
		persist(event);
	}

	@Override
	public List<UserEvent> findAllEvents() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("Start"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);// To avoid
																		// duplicates.
		List<UserEvent> events = (List<UserEvent>) criteria.list();
		return events;
	}

	public void updateCapacity(int eventid) {
		String hql = "update UserEvent set currCapacity=currCapacity+1 where id=?";
		Query qry = getSession().createQuery(hql);
	//	String hql = "update events set CurrCapacity=CurrCapacity+1 where EventID=?";
	//	Query qry = getSession().createSQLQuery(hql);
		qry.setParameter(0, eventid);
		int res = qry.executeUpdate();
	}
}
