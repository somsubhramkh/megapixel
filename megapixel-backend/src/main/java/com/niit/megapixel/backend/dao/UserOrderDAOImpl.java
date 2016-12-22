package com.niit.megapixel.backend.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.megapixel.backend.model.UserOrder;

@Repository("userOrderDAO")
@EnableTransactionManagement
@Transactional
public class UserOrderDAOImpl implements UserOrderDAO{

	@Autowired
	SessionFactory sessionFactory;

	public void addOrder(UserOrder userOrder) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(userOrder);
		
	}

	public UserOrder getUserOrderById(int userOrderId) {
		Session session=sessionFactory.getCurrentSession();
		UserOrder userOrder=(UserOrder)session.createQuery("from UserOrder where userOrderId="+userOrderId).getSingleResult();
		return userOrder;
	}

}
