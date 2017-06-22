package com.HAT.service;

import com.HAT.model.Cart;

public interface CartService {
	Cart getCart(int cartId);
	   void update(Cart cart);
}
