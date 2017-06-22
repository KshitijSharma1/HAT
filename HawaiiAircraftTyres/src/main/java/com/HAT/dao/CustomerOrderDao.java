package com.HAT.dao;

import com.HAT.model.CustomerOrder;

public interface CustomerOrderDao {

	void addCustomerOrder(CustomerOrder customerOrder);
	double getCustomerOrderGrandTotal(int cartId);
}
