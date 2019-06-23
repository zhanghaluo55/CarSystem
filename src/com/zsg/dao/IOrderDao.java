package com.zsg.dao;

import java.util.List;

import com.zsg.bean.Order;

public interface IOrderDao {
	public void save(Order order);
	public void delete(int id);
	public void update(int id,Order order);
	public List<Order> findAll();
	public Order findById(int id);
	public List<Order> findById(String type,String id)throws Exception;
	
	public List<Order> queryByPage(String hql,int offset,int pageSize);
}
