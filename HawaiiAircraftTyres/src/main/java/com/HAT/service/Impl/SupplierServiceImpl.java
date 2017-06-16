package com.HAT.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.HAT.dao.SupplierDao;
import com.HAT.model.Supplier;
import com.HAT.service.SupplierService;


@Service
public class SupplierServiceImpl implements SupplierService{
@Autowired
private SupplierDao supplierDao;
public SupplierServiceImpl(){
	System.out.println("CREATING INSTANCE FOR SUPPLIERSERVICEIMPL");
		
}

public Supplier saveOrUpdateSupplier(Supplier supplier){
	return supplierDao.saveOrUpdateSupplier(supplier);
//call the Dao method using productDao variable
}

public List<Supplier> getAllSuppliers() {
	return supplierDao.getAllSuppliers();
	 
	
	
}





}




