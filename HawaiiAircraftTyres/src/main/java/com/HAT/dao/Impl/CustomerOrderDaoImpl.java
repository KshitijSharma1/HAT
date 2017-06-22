package com.HAT.dao.Impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.HAT.dao.CartDao;
import com.HAT.dao.CustomerOrderDao;
import com.HAT.model.Cart;
import com.HAT.model.CartItem;
import com.HAT.model.CustomerOrder;

@Repository
@Transactional
public class CustomerOrderDaoImpl implements CustomerOrderDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private CartDao cartDao;
	
	public void addCustomerOrder(CustomerOrder customerOrder) {		
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(customerOrder);
		System.out.println("Customer order dao impl "+ customerOrder.getOrderId());
		session.flush();
	}

	public double getCustomerOrderGrandTotal(int cartId) {
		// TODO Auto-generated method stub
		Cart cart = cartDao.getCart(cartId);
		List<CartItem> cartItems = cart.getCartItems();
		double grandTotal = 0.0;
		for (CartItem cartItem : cartItems) {
			grandTotal = grandTotal + cartItem.getTotalPrice();
		}
		return grandTotal;
		// update cart set grandtotal=? where cartid=?
	}

}