package com.HAT.dao;

import com.HAT.model.Product;

public interface ProductDao {
	Product saveOrUpdateProduct(Product product);
}
