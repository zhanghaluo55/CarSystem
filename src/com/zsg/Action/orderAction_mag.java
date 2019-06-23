package com.zsg.Action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.ietf.jgss.Oid;

import com.opensymphony.xwork2.ActionSupport;
import com.zsg.bean.Car;
import com.zsg.bean.Order;
import com.zsg.bean.User;
import com.zsg.factory.DaoFactory;

public class orderAction_mag extends ActionSupport{
	private Order order;
	private int oid;
	private String type;
	private String keyword;
	private String uoid;
	private String coid;
	public static final String UPDATE="update";
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	public String getUoid() {
		return uoid;
	}
	public void setUoid(String uoid) {
		this.uoid = uoid;
	}
	public String getCoid() {
		return coid;
	}
	public void setCoid(String coid) {
		this.coid = coid;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String searchOrder() throws Exception{
		System.out.println(type+","+keyword);
		List<Order> orderList=new ArrayList<Order>();
		if(keyword!=null) {
			orderList=DaoFactory.getOrderDao_magInstance().findKeyWord(type, keyword);
			ServletActionContext.getRequest().setAttribute("Order", orderList);
		}else {
			orderList=DaoFactory.getOrderDao_magInstance().findAll();
			ServletActionContext.getRequest().setAttribute("Order", orderList);
		}
		return SUCCESS;
	}
	
	public String addOrder() throws Exception{
		try {
			System.out.println("要添加的两个ID"+uoid+","+coid);
			int uid=Integer.parseInt(uoid);
			int cid=Integer.parseInt(coid);
			System.out.println("用户ID="+uid);
			System.out.println("汽车ID="+cid);
			//User user=DaoFactory.getUserDaoInstance().findById(2);
			User user=DaoFactory.getUserDao_magInstance().findById(2);
			System.out.println("用户昵称="+user.getUname());
			Car car=DaoFactory.getCarDaoInstance().findById(5);
			System.out.println("车型名称="+car.getCname());
			order.setUser(user);
			order.setCar(car);
	/*		user.getSetOrder().add(order);
			car.getSetOrder().add(order);*/
			DaoFactory.getOrderDao_magInstance().save(order);
		} catch (Exception e) {
			return ERROR;
		}
		return SUCCESS;
	}
	
	public String deleteOrder() throws Exception{
		System.out.println(oid);
		int r=0;
		r=DaoFactory.getOrderDao_magInstance().deleteOrder(oid);
		
		return SUCCESS;
	}
	@Override
	public String execute() throws Exception {
		System.out.println(oid);
		ServletActionContext.getRequest().setAttribute("oid", oid);
		return UPDATE;
	}
	public String updateOrder() throws Exception{
		
		DaoFactory.getOrderDaoInstance().update(oid, order);
		return SUCCESS;
	}

}
