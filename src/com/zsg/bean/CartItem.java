package com.zsg.bean;

public class CartItem {
	private Car car;
	private int quantity;
	private float price;

	public Car getCar() {
		return car;
	}
	public void setCar(Car car) {
		this.car = car;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public float getPrice() {
		return car.getPrice()*this.quantity;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	
}
