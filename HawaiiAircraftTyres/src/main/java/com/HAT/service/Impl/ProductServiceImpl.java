package com.HAT.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.HAT.dao.ProductDao;
import com.HAT.model.Product;
import com.HAT.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{
@Autowired
private ProductDao productDao;
public ProductServiceImpl(){
	System.out.println("CREATING INSTANCE FOR PRODUCTSERVICEIMPL");
		
}

public Product saveOrUpdateProduct(Product product){
	return productDao.saveOrUpdateProduct(product);
//call the Dao method using productDao variable
}
}