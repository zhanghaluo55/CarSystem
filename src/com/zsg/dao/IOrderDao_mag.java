package com.zsg.dao;

import java.util.List;

import com.zsg.bean.Order;

public interface IOrderDao_mag {
	public void save(Order order);
	public List<Order> findAll();
	public List<Order> findKeyWord(String type,String keyword);
	public Order findById(int oid);
	public int deleteOrder(int oid);
	public int updateOrder(int oid,Order order);
}
