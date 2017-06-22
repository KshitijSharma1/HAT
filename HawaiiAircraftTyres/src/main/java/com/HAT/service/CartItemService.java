package com.HAT.service;

import com.HAT.model.Cart;
import com.HAT.model.CartItem;

public interface CartItemService {
	void addCartItem(CartItem cartItem);
	CartItem getCartItem(int cartItemId);
	void removeCartItem(CartItem cartItem);
	void removeAllCartItems(Cart cart);
}
