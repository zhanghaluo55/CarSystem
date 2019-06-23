package com.zsg.Action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.zsg.bean.Order;
import com.zsg.bean.PageBean;
import com.zsg.bean.PageBeanOrder;
import com.zsg.bean.User;
import com.zsg.factory.DaoFactory;
import com.zsg.utils.PageUtils;

public class OrderAction extends ActionSupport{
	private int page;
	public String pagelist() throws Exception{
		PageBeanOrder pageBean=PageUtils.getPageBeanOrder(5, page,"from Order");
		ServletActionContext.getRequest().getSession().setAttribute("pageBean", pageBean);
		return "pagelist";
	}
	public String orderpay() {
		HttpServletRequest request=ServletActionContext.getRequest();
		int oid=Integer.parseInt(request.getParameter("oid"));
		
		Order order=DaoFactory.getOrderDaoInstance().findById(oid);
		
		List<Order> orderlist=new ArrayList<Order>();
		orderlist.add(order);
		ServletActionContext.getRequest().getSession().setAttribute("orderlist",orderlist);
		return "orderpay";
	}
	public String orderReRep() {
		HttpServletRequest request=ServletActionContext.getRequest();
		int oid=Integer.parseInt(request.getParameter("oid"));
		
		Order order=DaoFactory.getOrderDaoInstance().findById(oid);
		
		ServletActionContext.getRequest().getSession().setAttribute("order",order);
		return "orderReRep";
	}
	
	public String orderRep() {
		HttpServletRequest request=ServletActionContext.getRequest();
		int oid=Integer.parseInt(request.getParameter("oid"));
		
		Order order=DaoFactory.getOrderDaoInstance().findById(oid);
		order.setFlag("ÒÑÈ¡Ïû");
		DaoFactory.getOrderDaoInstance().update(oid, order);
		
		PageBeanOrder pageBean=PageUtils.getPageBeanOrder(5, page,"from Order");
		ServletActionContext.getRequest().getSession().setAttribute("pageBean", pageBean);
		return "orderRep";
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	
}
