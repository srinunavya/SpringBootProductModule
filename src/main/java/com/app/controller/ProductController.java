package com.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.model.Product;
import com.app.service.ProductService;

@Controller
@RequestMapping("product")
public class ProductController {
	
	@Autowired
	private ProductService service;
	
	//1.show Product form with backing object
	@RequestMapping("/reg")
	public String showReg(Model map) {
		//Form backing object
		map.addAttribute("product",new Product());
		return "Register";
	}
	
	//2.read form data on click submit
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String saveData(@ModelAttribute Product product,Model map) {
		//call service layer
		Integer id=service.saveProduct(product);
		map.addAttribute("message","product '"+id+"' created!");
		//clean form backing object
		map.addAttribute("product",new Product());
		return "Register";
	}
	
	//3.Fetch all rows from database
	@RequestMapping("/all")
	public String showAll(Model map) {
		//fetch all rows from database
		List<Product> list=service.getAllProducts();
		map.addAttribute("list",list);
		return "Data";
	}
	
	//4.delete row based on id
	@RequestMapping("/delete")
	public String reomve(@RequestParam Integer id,Model map) {
		//delete row based on id
		service.deleteProduct(id);
		map.addAttribute("msg",id+" deleted successfully");
		//response.sendRedirect
		return "redirect:all";
	}

}
