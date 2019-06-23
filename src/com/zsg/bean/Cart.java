package com.zsg.bean;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
//购物车类
public class Cart {
	private Map<Integer, CartItem> carMap=new LinkedHashMap<>();
	private String username;
	private float price;
	  public void addGoods(Car car) {

          //获取得到购物项
          CartItem cartItem =carMap.get(car.getCid());

          //判断购物车是否存在该购物项，如果不存在
          if (cartItem == null) {

              //创建这个购物项对象
              cartItem = new CartItem();

              //将用户传递过来的书籍作为购物项
              cartItem.setCar(car);

              //把该购物项的数量设置为1
              cartItem.setQuantity(1);

              //把购物项加入到购物车去
              carMap.put(car.getCid(), cartItem);
          } else {

              //如果存在该购物项，将购物项的数量+1
              cartItem.setQuantity(cartItem.getQuantity() + 1);
          }
      }
	  
	  public void delGoods(Car car) {
		  CartItem cartItem =carMap.get(car.getCid());
	     	                
	      cartItem.setCar(car);     
	      cartItem.setQuantity(cartItem.getQuantity() - 1);
	      carMap.put(car.getCid(), cartItem);       
	          
	  }	  
	  
      //购物车的总价就是所有购物项的价格加起来
      public double getPrice() {

          double totalPrice = 0;

          for (Entry<Integer, CartItem> me : carMap.entrySet()) {

              //得到每个购物项
              CartItem cartItem = me.getValue();

              //将每个购物项的钱加起来，就是购物车的总价了！
              totalPrice += cartItem.getPrice();
          }

          return totalPrice;
      }


      public Map<Integer, CartItem> getCarMap() {
		return carMap;
	}

	public void setCarMap(Map<Integer, CartItem> carMap) {
		this.carMap = carMap;
	}

	public void setPrice(float price) {
          this.price = price;
      }

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	
}
