package com.zsg.dao;

import java.util.List;

import com.zsg.bean.Car;

public interface ICarDao_mag {
	public void save(Car car);
	public List<Car> findAll();
	public List<Car> findKeyWord(String type,String keyword);
	public List<Car> findByPrice(String type,String price1,String price2);
	public Car findById(int cid);
	public int deleteCar(int cid);
	public int updateCar(int cid,Car car);
	
	public List<Car> queryByPage(String hql,int offset,int pageSize);
}
