package com.HAT.dao.Impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.HAT.dao.ProductDao;
import com.HAT.model.Product;
@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
@Autowired
private SessionFactory sessionFactory;
	public ProductDaoImpl(){
		System.out.println("CREATING INSTANCE FOR PRODUCTDAOIMPL");
	}
	
	public Product saveOrUpdateProduct(Product product) {
		System.out.println(product.getId());
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(product); //insert into product values (.....)
		session.flush();
		session.close();
		System.out.println(product.getId());
		return product;	
	}


	
	
}