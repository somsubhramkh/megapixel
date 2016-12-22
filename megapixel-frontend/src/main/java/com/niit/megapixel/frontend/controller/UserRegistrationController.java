package com.niit.megapixel.frontend.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.megapixel.backend.dao.ProductDAO;
import com.niit.megapixel.backend.dao.UserDAO;
import com.niit.megapixel.backend.model.Product;
import com.niit.megapixel.backend.model.User;

@Controller
public class UserRegistrationController {
	
	@Autowired
	UserDAO userDAO;
	
	@RequestMapping(value="/Register",method=RequestMethod.GET)
	public String register(Model model)
	{
		model.addAttribute("user",new User());
		return "Register";
	}

	@RequestMapping(value= "/user/add", method = RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute("user") User user,BindingResult result)
	{
		
		if (result.hasErrors()) {
			return "Register";
		} else {

			userDAO.addUser(user);

			return "redirect:/";
		}
	}
	
	

	
}
