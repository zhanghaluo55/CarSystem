package com.zsg.bean;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
//���ﳵ��
public class Cart {
	private Map<Integer, CartItem> carMap=new LinkedHashMap<>();
	private String username;
	private float price;
	  public void addGoods(Car car) {

          //��ȡ�õ�������
          CartItem cartItem =carMap.get(car.getCid());

          //�жϹ��ﳵ�Ƿ���ڸù�������������
          if (cartItem == null) {

              //����������������
              cartItem = new CartItem();

              //���û����ݹ������鼮��Ϊ������
              cartItem.setCar(car);

              //�Ѹù��������������Ϊ1
              cartItem.setQuantity(1);

              //�ѹ�������뵽���ﳵȥ
              carMap.put(car.getCid(), cartItem);
          } else {

              //������ڸù�����������������+1
              cartItem.setQuantity(cartItem.getQuantity() + 1);
          }
      }
	  
	  public void delGoods(Car car) {
		  CartItem cartItem =carMap.get(car.getCid());
	     	                
	      cartItem.setCar(car);     
	      cartItem.setQuantity(cartItem.getQuantity() - 1);
	      carMap.put(car.getCid(), cartItem);       
	          
	  }	  
	  
      //���ﳵ���ܼ۾������й�����ļ۸������
      public double getPrice() {

          double totalPrice = 0;

          for (Entry<Integer, CartItem> me : carMap.entrySet()) {

              //�õ�ÿ��������
              CartItem cartItem = me.getValue();

              //��ÿ���������Ǯ�����������ǹ��ﳵ���ܼ��ˣ�
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
