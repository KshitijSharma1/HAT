package com.HAT.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.HAT.model.Cart;
import com.HAT.model.Customer;
import com.HAT.service.CartService;
import com.HAT.service.CustomerService;

@Controller

public class CartController {
	
	@Autowired
	private CustomerService customerService;
	@Autowired
	private CartService cartService;
	
	@RequestMapping("/cart/getCartId" )
	public String getCartId(Model model) {
		User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = user.getUsername();
		Customer customer = customerService.getCustomerByUsername(username);
		Cart cart = customer.getCart();
		int cartId = cart.getCartId();
		System.out.println("cart id in CartController is" + cartId);
		model.addAttribute("cartId", cartId);
		return "cart";
	}

	@RequestMapping("/cart/getCart/{cartId}")
	public @ResponseBody Cart getCartRedirect(@PathVariable int cartId) {
		System.out.println("cart id in CartController is" + cartId);
		Cart cart = cartService.getCart(cartId);
		return cart;
	}

}