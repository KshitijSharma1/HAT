package com.HAT.dao.Impl;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.HAT.dao.CartDao;
import com.HAT.dao.CustomerOrderDao;
import com.HAT.model.Cart;
import com.HAT.service.CustomerOrderService;

@Repository
@Transactional
public class CartDaoImpl implements CartDao {

	@Autowired
	private CustomerOrderDao customerOrderDao;

	@Autowired
	private SessionFactory sessionFactory;

	public Cart getCart(int cartId) {

		Session session = sessionFactory.openSession();
		System.out.println("Cart Id inside getCart method = " + cartId);
		Cart cart = (Cart) session.get(Cart.class, cartId);
		session.close();
		return cart;
	}

	public void update(Cart cart) {
		int cartId = cart.getCartId();
		double grandTotal = customerOrderDao.getCustomerOrderGrandTotal(cartId);
		cart.setGrandTotal(grandTotal);

		Session session = sessionFactory.openSession();
		session.merge(cart);
		session.close();
	}

	public Cart validate(int cartId) throws IOException {
		System.out.println("cartId inside validate method:" + cartId);
		Cart cart = getCart(cartId);
	
		if (cart == null || cart.getCartItems().size() == 0) {
			throw new IOException(cartId + "");
		}

		update(cart);
		
		return cart;
	}

}
