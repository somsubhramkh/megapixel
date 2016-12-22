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
import com.niit.megapixel.backend.model.Product;

@Controller
public class AdminController {
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping(value="/ProductAdmin",method=RequestMethod.GET)
	public String listProducts(Model model)
	{
		model.addAttribute("product",new Product());
		System.out.println("inside controller");
		
		model.addAttribute("listProducts",productDAO.listProducts());
		return "ProductAdmin";
	}

	@RequestMapping(value= "/ProductAdmin/add", method = RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute("product") Product product,BindingResult result,HttpServletRequest request)
	{
		
		String filename = null;
		byte[] bytes;
		
		if (!product.getImage().isEmpty()) {

			try {
				
				bytes = product.getImage().getBytes();
				productDAO.addProduct(product);
				System.out.println("Data Inserted");
				String path = request.getSession().getServletContext().getRealPath("/resources/img/" + product.getProductId() + ".jpg");
				System.out.println("Path = " + path);
				System.out.println("File name = " + product.getImage().getOriginalFilename());
				File f = new File(path);
				BufferedOutputStream bs = new BufferedOutputStream(new FileOutputStream(f));
				bs.write(bytes);
				bs.close();
				System.out.println("Image uploaded");
			} catch (Exception ex) {
				System.out.println(ex.getMessage());
			}
		}
		
		if(result.hasErrors())
		{
			return "ProductAdmin";
		}
		else{
			if (product.getProductId() == 0) {
				productDAO.addProduct(product);
			} else {
				productDAO.updateProduct(product);
			}

			return "redirect:/ProductAdmin";
		}
	}
	
	
	@RequestMapping("/remove/{id}")
	public String removeProduct(@PathVariable("id") int id)
	{
		productDAO.deleteProduct(productDAO.getProductById(id));
		return "redirect:/ProductAdmin";
	}
	
	@RequestMapping("/edit/{id}")
	public String editProduct(@PathVariable("id") int id, Model model)
	{
		model.addAttribute("product", productDAO.getProductById(id));
        model.addAttribute("listProducts", productDAO.listProducts());
        return "ProductAdmin";
	}
	
}
