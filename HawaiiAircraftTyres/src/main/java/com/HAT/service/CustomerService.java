package com.HAT.service;

import java.util.List;

import com.HAT.model.Customer;

public interface CustomerService {
	Customer saveOrUpdateCustomer(Customer customer);
	List<Customer> getAllCustomers();
	public Customer getCustomerByUsername(String username);
}
