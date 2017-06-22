package com.HAT.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.HAT.dao.CartDao;
import com.HAT.model.Cart;
import com.HAT.service.CartService;

@Service
public class CartServiceImpl implements CartService {
	@Autowired
	private CartDao cartDao;
		public Cart getCart(int cartId) {
			return cartDao.getCart(cartId);
		}
		
		 public void update(Cart cart){
		        cartDao.update(cart);
		    }
	}


