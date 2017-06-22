package com.HAT.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Cart implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cartId;
	private double grandTotal;

	
	@OneToOne
	@JoinColumn(name = "id")
	@JsonIgnore
	private Customer customer;

	@OneToMany(mappedBy="cart", cascade= CascadeType.ALL, fetch=FetchType.EAGER)
	private List<CartItem> cartItems;
	
	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}


	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public double getGrandTotal() {
		return grandTotal;
	}

	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}

	public List<CartItem> getCartItems() {
		return cartItems;
	}

	public void setCartItems(List<CartItem> cartItems) {
		this.cartItems = cartItems;
	}
	
	
	
	
}
