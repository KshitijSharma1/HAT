package com.HAT.service;

import java.util.List;

import com.HAT.model.Product;

public interface ProductService {
	Product saveOrUpdateProduct(Product product);
	public List<Product> getAllProducts();

	Product getProductById(int id);

	void deleteProduct(int id);

	void editProduct(Product product);
}
