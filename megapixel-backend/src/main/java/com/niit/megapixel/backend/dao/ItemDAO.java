package com.niit.megapixel.backend.dao;

import com.niit.megapixel.backend.model.Cart;
import com.niit.megapixel.backend.model.Item;

public interface ItemDAO {

	public void addItem(Item item);
	public void removeItem(Item item);
	public void removeAllItems(Cart cart);
	public Item getItemByItemId(int itemId);
	
}
