package com.niit.megapixel.backend.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.megapixel.backend.model.Product;
import com.niit.megapixel.backend.model.User;

@Repository
@EnableTransactionManagement
@Transactional
public class ProductDAOImpl implements ProductDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	public void addProduct(Product product) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
		
	}

	public void updateProduct(Product product) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
		
	}

	public void deleteProduct(Product product) {
		Session session=sessionFactory.getCurrentSession();
		session.delete(product);
		
	}

	public Product getProductById(int id) {
		Session session=sessionFactory.getCurrentSession();
		Product product=(Product)session.createQuery("from Product where productId="+id).getSingleResult();
		
		return product;
	}

	public List<Product> listProducts() {
		Session session=sessionFactory.getCurrentSession();
		List<Product> products=session.createQuery("from Product").getResultList();
		
		return products;
	}

	public List<Product> getProductsByCategory(String category) {
		Session session=sessionFactory.getCurrentSession();
		List<Product> products=session.createQuery("from Product where category='"+category+"'").getResultList();
		
		return products;
	}

}
