package com.zsg.utils;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.zsg.bean.Car;
import com.zsg.bean.Order;
import com.zsg.bean.PageBean;
import com.zsg.bean.PageBeanOrder;
import com.zsg.bean.User;
import com.zsg.factory.DaoFactory;

public class PageUtils {
	public static int getAllRowCount(String hql) {
		Session session=null;
		int allRows=0;
		try {
			session=HibernateUtils.getSession();
			session.beginTransaction();
			Query query=session.createQuery(hql);
			allRows=query.list().size();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.getStackTrace();
			session.getTransaction().rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		
		return allRows;
	}

	public static PageBean getPageBean(int pageSize, int page,String hql) {
		PageBean pageBean=new PageBean();
			
		int allRows=PageUtils.getAllRowCount(hql);
		int totalPage=pageBean.getTotalPages(pageSize,allRows);
		int currentPage=pageBean.getCurPage(page);
		int offset=pageBean.getCurrentPageOffset(pageSize, currentPage);
		
		List<Car> list=DaoFactory.getCarDaoInstance().queryByPage(hql, offset, pageSize);
		pageBean.setList(list);
		pageBean.setAllRows(allRows);
		pageBean.setCurrentPage(currentPage);
		pageBean.setTotalPage(totalPage);
		
		return pageBean;
	}
	
	public static PageBeanOrder getPageBeanOrder(int pageSize, int page,String hql) {
		PageBeanOrder pageBean=new PageBeanOrder();
			
		int allRows=PageUtils.getAllRowCount(hql);
		int totalPage=pageBean.getTotalPages(pageSize,allRows);
		int currentPage=pageBean.getCurPage(page);
		int offset=pageBean.getCurrentPageOffset(pageSize, currentPage);
		
		List<Order> list=DaoFactory.getOrderDaoInstance().queryByPage(hql, offset, pageSize);
		pageBean.setList(list);
		pageBean.setAllRows(allRows);
		pageBean.setCurrentPage(currentPage);
		pageBean.setTotalPage(totalPage);
		
		return pageBean;
	}
}
