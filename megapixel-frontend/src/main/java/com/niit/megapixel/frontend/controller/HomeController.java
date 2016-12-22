package com.niit.megapixel.frontend.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.megapixel.backend.dao.ProductDAO;
import com.niit.megapixel.backend.model.Product;


@Controller
public class HomeController {
	
	@Autowired
	//@Qualifier(value="productDAO")
	ProductDAO productDAO;
	
	
	
	@RequestMapping("/")
	public ModelAndView helloWorld(){
		
		ModelAndView model=new ModelAndView("index");
		return model;
	}

	@RequestMapping("/Register")
	public ModelAndView registerPage(){
		
		ModelAndView model=new ModelAndView("Register");
		return model;
	}
	
	@RequestMapping("/Login")
	public ModelAndView loginPage(){
		
		ModelAndView model=new ModelAndView("Login");
		return model;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logoutPage(){
		
		ModelAndView model=new ModelAndView("index");
		return model;
	}
	
	@RequestMapping("/Products/{category}")
	public ModelAndView productsPage(@PathVariable("category") String category){
		
		List<Product> products=productDAO.getProductsByCategory(category);
		String json=new Gson().toJson(products);
		ModelAndView model=new ModelAndView("Product");
		model.addObject("productData",json);
		return model;
	}
	
	
	@RequestMapping("/ProductDetails/{productId}")
	public ModelAndView productDetailsPage(@PathVariable("productId") int productId){
		
		Product product=productDAO.getProductById(productId);
		ModelAndView model=new ModelAndView("ProductDetails");
		model.addObject("product", product);
		return model;
	}
	
	
	
}

