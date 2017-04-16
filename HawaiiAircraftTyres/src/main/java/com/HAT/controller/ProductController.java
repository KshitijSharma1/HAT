package com.HAT.controller;


import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


import com.HAT.model.Product;
import com.HAT.service.ProductService;

@Controller
public class ProductController {


    @Autowired
	private ProductService productService;
	

	// display form
	@RequestMapping("/addProduct")
	public String getProductForm(Model model) {
		// Product product = new Product();
		model.addAttribute("product", new Product());
		return "NewRange";
	}

	@ModelAttribute("productcommand")
	public Product newProduct() {
		/*
		 * Product newProduct=productService.saveProduct(); /NOT A FINAL
		 * VERSION..
		 */
		return new Product();

	}

	@RequestMapping("/addNewProduct")
	public String addProduct(@Valid @ModelAttribute("productcommand") Product product, BindingResult result,
			HttpServletRequest request) {
		if (result.hasErrors())
			return "productform";
		productService.saveOrUpdateProduct(product);
		
		return "redirect:/addProduct";

	}




} // The End of Class;

