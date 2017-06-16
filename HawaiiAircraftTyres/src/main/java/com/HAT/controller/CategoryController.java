package com.HAT.controller;

import java.util.List;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.HAT.model.Category;
import com.HAT.service.CategoryService;

@Controller
public class CategoryController {
	@Autowired
	private CategoryService categoryService;
	// display form
	// http://localhost:9002/HomeDecor/admin/categoryform

	@RequestMapping("/addCategory")
	public String getCategoryForm(Model model) {
		// Product product = new Product();
		model.addAttribute("category", new Category());
		model.addAttribute("categories", categoryService.getCategories());
		return "categoryform";
	}

	@ModelAttribute("category")
	public Category newCategory() {
		
		return new Category();

	}

	@RequestMapping("/addNewCategory")
	public String addCategory(@Valid @ModelAttribute(value = "category") Category category, BindingResult result) {
		if (result.hasErrors())
			return "categoryform";
		categoryService.saveOrUpdateCategory(category);
		return "redirect:/catlist";
	}
	
	@RequestMapping("/catlist")
	public String getCategories(Model model) {
		List<Category> categories = categoryService.getCategories();
		// Assigning list of products to model attribute products
		model.addAttribute("categoryList", categories);
		return "categorylist";
	}

}
