package com.HAT.service;

import java.util.List;

import com.HAT.model.Supplier;

public interface SupplierService {
	Supplier saveOrUpdateSupplier(Supplier supplier);

	public List<Supplier> getAllSuppliers();
}
