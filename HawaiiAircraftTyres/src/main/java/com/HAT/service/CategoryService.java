package com.HAT.service;

import java.util.List;

import com.HAT.model.Category;

public interface CategoryService {
	public List<Category> getCategories();

	Category saveOrUpdateCategory(Category category);


	
}
