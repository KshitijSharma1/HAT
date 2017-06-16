package com.HAT.dao;

import java.util.List;

import com.HAT.model.Supplier;

public interface SupplierDao {

	Supplier saveOrUpdateSupplier(Supplier supplier);

	List<Supplier> getAllSuppliers();


}
