package com.zsg.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.zsg.bean.Car;
import com.zsg.bean.Order;
import com.zsg.bean.User;
import com.zsg.dao.IOrderDao;
import com.zsg.utils.HibernateUtils;

public class OrderDaoImpl implements IOrderDao{
	@Override
	public void save(Order order) {
		Session session=null;
		try {
			session=HibernateUtils.getSession();	
			session.beginTransaction();
			
			session.save(order);	
			session.getTransaction().commit();
			
		} catch (Exception e) {
			e.getStackTrace();
			session.getTransaction().rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}

	}

	@Override
	public void delete(int id) {
		Session session=null;
		try {
			session=HibernateUtils.getSession();	
			session.beginTransaction();
			
			Order order=(Order)session.get(Order.class, id);
			session.delete(order);
			session.getTransaction().commit();
			
		} catch (Exception e) {
			e.getStackTrace();
			session.getTransaction().rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}

	}

	@Override
	public void update(int id, Order order) {
		Session session=null;
		try {
			session=HibernateUtils.getSession();	
			session.beginTransaction();
			
			Order order1=(Order)session.get(Order.class, id);
			order1.setQunatity(order.getQunatity());
			order1.setPrice(order.getPrice());
			order1.setOdate(order.getOdate());
			order1.setFlag(order.getFlag());
			order1.setCar(order.getCar());
			order1.setUser(order.getUser());
			session.update(order1);
			session.getTransaction().commit();
			
		} catch (Exception e) {
			e.getStackTrace();
			session.getTransaction().rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}

	}

	@Override
	public List<Order> findAll() {
		
		return null;
	}

	@Override
	public Order findById(int id) {
		Session session=null;
		Order order=new Order();
		try {
			session=HibernateUtils.getSession();
			session.beginTransaction();
			order=(Order)session.get(Order.class,id);
			session.getTransaction().commit();
		} catch (Exception e) {
			e.getStackTrace();
			session.getTransaction().rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		return order;
	}

	@Override
	public List<Order> findById(String type, String id) throws Exception {
		Session session=null;
		List<Order> list=null;
		try {
			session=HibernateUtils.getSession();
			session.beginTransaction();
			Query query=session.createQuery("from Order where "+type+ " = '"+id+"'");
			 list=query.list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.getStackTrace();
			session.getTransaction().rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		
		return list;
	}

	@Override
	public List<Order> queryByPage(String hql, int offset, int pageSize) {
		Session session=null;
		List<Order> list=null;
		try {
			session=HibernateUtils.getSession();
			session.beginTransaction();
			Query query=session.createQuery(hql).setFirstResult(offset).setMaxResults(pageSize);
			list=query.list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.getStackTrace();
			session.getTransaction().rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		
		return list;
	}

}
