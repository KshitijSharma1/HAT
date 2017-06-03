package com.HAT.dao;

import java.util.List;

import com.HAT.model.Customer;

public interface CustomerDao {
	Customer saveOrUpdateCustomer(Customer customer);
	List<Customer> getAllCustomers();
}
