package com.HAT.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.HAT.dao.CategoryDao;
import com.HAT.model.Category;
import com.HAT.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService{
@Autowired
private CategoryDao categoryDao;

public List<Category> getCategories() {
	return categoryDao.getCategories();
}

public Category saveOrUpdateCategory(Category category) {
	return categoryDao.saveOrUpdateCategory(category);
}

	
}
