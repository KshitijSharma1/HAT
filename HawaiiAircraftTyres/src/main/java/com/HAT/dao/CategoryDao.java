package com.HAT.dao;

import java.util.List;

import com.HAT.model.Category;

public interface CategoryDao {
	List<Category> getCategories();

	Category saveOrUpdateCategory(Category category);

	
}
