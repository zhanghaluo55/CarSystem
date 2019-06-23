package com.zsg.factory;

import com.zsg.bean.Order;
import com.zsg.dao.ICarDao;
import com.zsg.dao.ICarDao_mag;
import com.zsg.dao.IOrderDao;
import com.zsg.dao.IOrderDao_mag;
import com.zsg.dao.IUserDao;
import com.zsg.dao.IUserDao_mag;
import com.zsg.dao.impl.CarDaoImpl;
import com.zsg.dao.impl.CarDaoImpl_mag;
import com.zsg.dao.impl.OrderDaoImpl;
import com.zsg.dao.impl.OrderDaoImpl_mag;
import com.zsg.dao.impl.UserDaoImpl;
import com.zsg.dao.impl.UserDaoImpl_mag;

public class DaoFactory {
	public static IUserDao getUserDaoInstance() {
		return new UserDaoImpl();
	}
	public static ICarDao getCarDaoInstance() {
		return new CarDaoImpl();
	}
	public static IOrderDao getOrderDaoInstance() {
		return new OrderDaoImpl();
	}
	
	public static IUserDao_mag getUserDao_magInstance() {
		return new UserDaoImpl_mag();
	}
	public static ICarDao_mag getCarDao_magInstance() {
		return new CarDaoImpl_mag();
	}
	public static IOrderDao_mag getOrderDao_magInstance() {
		return new OrderDaoImpl_mag();
	}
}
