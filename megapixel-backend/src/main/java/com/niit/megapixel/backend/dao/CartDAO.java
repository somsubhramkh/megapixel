package com.niit.megapixel.backend.dao;

import com.niit.megapixel.backend.model.Cart;

public interface CartDAO {
	
	public void addCart(Cart cart);
	public void updateCart(Cart cart);
	public Cart getCartById(int cartId);

}
