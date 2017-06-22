package com.HAT.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.HAT.dao.CustomerDao;
import com.HAT.model.Customer;
import com.HAT.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {
@Autowired
private CustomerDao customerDao;

	public Customer saveOrUpdateCustomer(Customer customer) {
		
		return customerDao.saveOrUpdateCustomer(customer);
	}

	public List<Customer> getAllCustomers() {
		return customerDao.getAllCustomers();
	}

	public Customer getCustomerByUsername(String username) {
		return customerDao.getCustomerByUsername(username);
	}

}
