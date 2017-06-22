package com.HAT.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.HAT.dao.CustomerOrderDao;
import com.HAT.model.CustomerOrder;
import com.HAT.service.CustomerOrderService;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {
	@Autowired
	private CustomerOrderDao customerOrderDao;

	public void addCustomerOrder(CustomerOrder customerOrder) {
		customerOrderDao.addCustomerOrder(customerOrder);
	}
	

	public double getCustomerOrderGrandTotal(int cartId) {
		// TODO Auto-generated method stub
		return customerOrderDao.getCustomerOrderGrandTotal(cartId);
	}
}
