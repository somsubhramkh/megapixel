package com.niit.megapixel.rest.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.niit.megapixel.backend.dao.CartDAO;
import com.niit.megapixel.backend.dao.ItemDAO;
import com.niit.megapixel.backend.model.Cart;
import com.niit.megapixel.backend.model.Item;

@RestController
public class CartRestController {
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	ItemDAO itemDAO;
	
	@RequestMapping("/refreshCart/{cartId}")
    public Cart getCartById (@PathVariable(value = "cartId") int cartId) {
        return cartDAO.getCartById(cartId);
    }
	
	@RequestMapping(value = "/removeItem/{itemId}", method = RequestMethod.PUT)
    public void removeItem (@PathVariable(value = "itemId") int itemId) {
        Item item = itemDAO.getItemByItemId(itemId);
        itemDAO.removeItem(item);

    }

}
