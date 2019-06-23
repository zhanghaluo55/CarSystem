package com.zsg.dao;

import java.util.List;
import java.util.Map;

import com.zsg.bean.Car;


public interface ICarDao {
	public void login(String username,String password);
	public void save(Car car);
	public void delete(int id);
	public void update(int id,Car car);
	public List<Car> findAll();
	public Car findById(int id);
	public List<Car> findById(String type,String id)throws Exception;
	
	public List<Car> queryByPage(String hql,int offset,int pageSize);
	public Map<Integer,Car> findAll1();
}
