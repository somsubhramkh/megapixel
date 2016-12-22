package com.niit.megapixel.frontend.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.megapixel.backend.dao.CartDAO;
import com.niit.megapixel.backend.dao.ItemDAO;
import com.niit.megapixel.backend.dao.ProductDAO;
import com.niit.megapixel.backend.dao.UserDAO;
import com.niit.megapixel.backend.dao.UserOrderDAO;
import com.niit.megapixel.backend.model.Cart;
import com.niit.megapixel.backend.model.Item;
import com.niit.megapixel.backend.model.Product;
import com.niit.megapixel.backend.model.User;
import com.niit.megapixel.backend.model.UserOrder;

@Controller
public class CartController {
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	ItemDAO itemDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	UserOrderDAO userOrderDAO;
	
	
	
	@RequestMapping("/AddToCart/{productId}")
	public ModelAndView cart(@PathVariable("productId") int productId, Principal principal){
		
		ModelAndView model=new ModelAndView("Cart");
		System.out.println(principal.getName());
		User user=userDAO.getUserByUsername(principal.getName());
		model.addObject("user", user);
		Cart cart=user.getCart();
		Product product=productDAO.getProductById(productId);
		List<Item> items=cart.getItems();
		
		for (int i=0; i<items.size(); i++) {
            if(product.getProductId()==items.get(i).getProduct().getProductId()){
                Item item = items.get(i);
                item.setQuantity(item.getQuantity()+1);
                item.setItemTotal(product.getPrice()*item.getQuantity());
                itemDAO.addItem(item);

                return model;
            }
        }

        Item item = new Item();
        item.setProduct(product);
        item.setQuantity(1);
        item.setItemTotal(product.getPrice()*item.getQuantity());
        item.setCart(cart);
		
		itemDAO.addItem(item);
		
		return model;
	}
	
	@RequestMapping("/order/{cartId}")
    public String createOrder(@PathVariable("cartId") int cartId) {
    	UserOrder userOrder = new UserOrder();
        Cart cart=cartDAO.getCartById(cartId);
        userOrder.setCart(cart);

        User user = cart.getUser();
        userOrder.setUser(user);
      

        userOrderDAO.addOrder(userOrder);
        
        return "redirect:/checkout?userOrderId="+userOrder.getUserOrderId();
    }

	
	@RequestMapping("/ShowCart")
	public ModelAndView showCart(Principal principal){
		
		ModelAndView model=new ModelAndView("Cart");
		
		User user=userDAO.getUserByUsername(principal.getName());
		model.addObject("user", user);
		
		
		return model;
	}
}
