package com.niit.megapixel.backend.dao;

import com.niit.megapixel.backend.model.UserOrder;

public interface UserOrderDAO {
	
	public void addOrder(UserOrder userOrder);
	public UserOrder getUserOrderById(int userOrderId);
	

}
