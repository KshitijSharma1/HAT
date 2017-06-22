package com.HAT.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.HAT.model.Cart;
import com.HAT.model.CartItem;
import com.HAT.model.Customer;
import com.HAT.model.Product;
import com.HAT.service.CartItemService;
import com.HAT.service.CartService;
import com.HAT.service.CustomerService;
import com.HAT.service.ProductService;

@Controller
public class CartItemController {
	@Autowired
	private CartItemService cartItemService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private ProductService productService;
	@Autowired
	private CartService cartService;
	/*
	 @RequestMapping("{cartId}")
	    public @ResponseBody Cart getCartById(@PathVariable(value = "cartId") int cartId){
	        return cartService.getCart(cartId);
	    }*/

	@RequestMapping(value = "/addCartItem/{id}", method = RequestMethod.POST)
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void addCartItem(@PathVariable(value = "id") int productId) {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		System.out.println("Username = " + user.getUsername());
		Customer customer = customerService.getCustomerByUsername(user.getUsername());// from
																						// Users
																						// where
																						// username=?
		Cart cart = customer.getCart();
		System.out.println("Cart Value = " + cart.getCartId());
		Product product = productService.getProductById(productId);
		List<CartItem> cartItems = cart.getCartItems();

		for (int i = 0; i < cartItems.size(); i++) {
			CartItem cartItem = cartItems.get(i);
			Product p = cartItem.getProduct();
			// 1 == 1
			if (p.getId() == productId) {
				cartItem.setQuantity(cartItem.getQuantity() + 1);// increment
																	// the
																	// quantity
				cartItem.setTotalPrice(cartItem.getQuantity() * p.getPrice()); // update
																				// the
																				// total
																				// price
				cartItemService.addCartItem(cartItem);// update the quantity in
														// the cartitem
				return;
			}
		}

		CartItem cartItem = new CartItem();
		cartItem.setQuantity(1);
		cartItem.setTotalPrice(cartItem.getQuantity() * product.getPrice());
		cartItem.setProduct(product); // set product id
		cartItem.setCart(cart);// set cart id
		cartItemService.addCartItem(cartItem); // insert query
	}

	@RequestMapping("/cart/removeCartItem/{cartItemId}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void removeCartItem(@PathVariable int cartItemId) {
		CartItem cartItem = cartItemService.getCartItem(cartItemId);
		cartItemService.removeCartItem(cartItem);
	}

	@RequestMapping("/cart/removeAllCartItems/{cartId}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void removeAllCartItems(@PathVariable int cartId) {
		Cart cart = cartService.getCart(cartId);
		cartItemService.removeAllCartItems(cart);
	}

}
