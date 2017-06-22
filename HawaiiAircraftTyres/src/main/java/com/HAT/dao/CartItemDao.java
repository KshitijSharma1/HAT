package com.HAT.dao;

import com.HAT.model.Cart;
import com.HAT.model.CartItem;

public interface CartItemDao {
	void addCartItem(CartItem cartItem);
	CartItem getCartItem(int cartItemId);
	void removeCartItem(CartItem cartItem);
	void removeAllCartItems(Cart cart);
}
