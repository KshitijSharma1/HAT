package com.HAT.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class CustomerOrder implements Serializable{


    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int orderId;

    @OneToOne
    @JoinColumn(name = "cartId")
    private Cart cart;

	@OneToOne
    @JoinColumn(name = "id")
    private Customer customer;

	@OneToOne
    @JoinColumn(name = "billsId")
    private BillingAddress billingAddress;

    @OneToOne
    @JoinColumn(name="shipId")
    private ShippingAddress shippingAddress;


    public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public BillingAddress getBillingAddress() {
        return billingAddress;
    }

    public void setBillingAddress(BillingAddress billingAddress) {
        this.billingAddress = billingAddress;
    }

    public ShippingAddress getShippingAddress() {
        return shippingAddress;
    }

    public void setShippingAddress(ShippingAddress shippingAddress) {
        this.shippingAddress = shippingAddress;
    }
}