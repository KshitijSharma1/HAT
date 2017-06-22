package com.HAT.model;

import java.io.Serializable;

import javax.persistence.*;
import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class CartItem implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int cartItemId;
	private int quantity;
	private double totalPrice;

	@ManyToOne
	@JoinColumn(name = "cartId")
	@JsonIgnore
	private Cart cart;

	@ManyToOne
	@JoinColumn(name="id")
	private Product product;

	public int getCartItemId() {
		return cartItemId;
	}

	public void setCartItemId(int cartItemId) {
		this.cartItemId = cartItemId;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

}
