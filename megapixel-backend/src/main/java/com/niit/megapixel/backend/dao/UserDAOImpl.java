package com.niit.megapixel.backend.dao;

import java.util.List;

import javax.enterprise.context.SessionScoped;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.megapixel.backend.model.Cart;
import com.niit.megapixel.backend.model.ShippingAddress;
import com.niit.megapixel.backend.model.User;


@Repository("userDAO")
@EnableTransactionManagement
@Transactional
public class UserDAOImpl implements UserDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	public void addUser(User user) {
		user.setEnabled(true);
		user.setRole("ROLE_USER");
		Cart cart=new Cart();
		cart.setUser(user);
		user.setCart(cart);
		
		ShippingAddress shippingAddress=new ShippingAddress();
		shippingAddress.setUser(user);
		user.setShippingAddress(shippingAddress);
		
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(user);
		
	}

	public void updateUser(User user) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(user);
		
	}

	public void deleteUser(User user) {
		Session session=sessionFactory.getCurrentSession();
		session.delete(user);
		
	}

	public User getUserById(int id) {
		Session session=sessionFactory.getCurrentSession();
		User user=(User)session.createQuery("from User where userId="+id).getSingleResult();
		
		return user;
	}

	public List<User> listUsers() {
		Session session=sessionFactory.getCurrentSession();
		List<User> users=session.createQuery("from User").getResultList();
		
		return users;
	}

	public User getUserByUsername(String username) {
		Session session=sessionFactory.getCurrentSession();
		User user=(User)session.createQuery("from User where username='"+username+"'").getSingleResult();
		
		return user;
	}
	

}
