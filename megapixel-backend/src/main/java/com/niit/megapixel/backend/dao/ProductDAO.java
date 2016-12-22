package com.niit.megapixel.backend.dao;

import java.util.List;

import com.niit.megapixel.backend.model.Product;



public interface ProductDAO {
	
	public void addProduct(Product product);
	public void updateProduct(Product product);
	public void deleteProduct(Product product);
	public Product getProductById(int id);
	public List<Product> listProducts();
	public List<Product> getProductsByCategory(String category);

}
