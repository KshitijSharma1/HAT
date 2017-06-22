package com.HAT.service;

import com.HAT.model.CustomerOrder;

public interface CustomerOrderService {

	void addCustomerOrder(CustomerOrder customerOrder);
	
	double getCustomerOrderGrandTotal(int cartId);
}
