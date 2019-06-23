package com.zsg.Service;

import java.util.Map;

import com.zsg.bean.Car;
import com.zsg.bean.Cart;
import com.zsg.bean.CartItem;
import com.zsg.factory.DaoFactory;

public class BusinessService {
	public static void buyGoods(int id, Cart cart) {

        Car car=DaoFactory.getCarDaoInstance().findById(id);
        cart.addGoods(car);

    }
	public static void delGoods(int id, Cart cart) {

        Car car=DaoFactory.getCarDaoInstance().findById(id);
        cart.delGoods(car);

    }
	
	public static void removeGoods(int id,Cart cart) {
		Map<Integer, CartItem> carMap=cart.getCarMap();
		carMap.remove(id);
	}
	
	public static void updateGoods(int id,Cart cart,int quantity) {
		cart.getCarMap().get(id).setQuantity(quantity);
	}
}
