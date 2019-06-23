package com.zsg.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


import com.zsg.bean.Order;
import com.zsg.dao.IOrderDao_mag;
import com.zsg.utils.HibernateUtils;
import org.hibernate.query.Query;
public class OrderDaoImpl_mag implements IOrderDao_mag{

	@Override
	public void save(Order order) {
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction tx=null;
		try {
			sessionFactory=HibernateUtils.getSessionFactory();
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			
			session.save(order);
			
			tx.commit();
		} catch (Exception e) {
				e.printStackTrace();
				tx.rollback();
		}finally {
			session.close();
			
		}
		
	}

	@Override
	public List<Order> findAll() {
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction tx=null;
		List<Order> list=null;
		try {
			sessionFactory=HibernateUtils.getSessionFactory();
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			
			Query query=session.createQuery("from Order");
			list=query.list();
			
			tx.commit();
		} catch (Exception e) {
				e.printStackTrace();
				tx.rollback();
		}finally {
			session.close();
			
		}
		return null;
	}

	@Override
	public List<Order> findKeyWord(String type, String keyword) {
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction tx=null;
		List<Order> list=null;
		try {
			sessionFactory=HibernateUtils.getSessionFactory();
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			System.out.println(type+","+keyword);
			String hql="from Order where "+type+" like '%"+keyword+"%'";
			Query query=session.createQuery(hql);
			list=query.list();
			
			for(Order order:list) {
				System.out.println(order.getOid()+"::");
			}

			tx.commit();
		} catch (Exception e) {
				e.printStackTrace();
				tx.rollback();
		}finally {
			session.close();
			
		}
		return list;
	}

	@Override
	public Order findById(int oid) {
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction tx=null;
		Order order=null;
		try {
			sessionFactory=HibernateUtils.getSessionFactory();
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			
			order=new Order();
			order=session.get(Order.class, oid);
		
			
			tx.commit();
		} catch (Exception e) {
				e.printStackTrace();
				tx.rollback();
		}finally {
			session.close();
			
		}
		return null;
	}

	@Override
	public int deleteOrder(int oid) {
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction tx=null;
		try {
			sessionFactory=HibernateUtils.getSessionFactory();
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			
			Order order=session.get(Order.class, oid);
			session.delete(order);
			
			tx.commit();
		} catch (Exception e) {
				e.printStackTrace();
				tx.rollback();
		}finally {
			session.close();
			
		}
		return 0;
	}

	@Override
	public int updateOrder(int oid, Order order) {
		System.out.println(oid);
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction tx=null;
		try {
			sessionFactory=HibernateUtils.getSessionFactory();
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			
			Order order2=(Order)session.get(Order.class, oid);
			
			order2.setPrice(order.getPrice());
			order2.setQunatity(order.getQunatity());
			order2.setOdate(order.getOdate());
			order2.setFlag(order.getFlag());
			
			
			tx.commit();
		} catch (Exception e) {
				e.printStackTrace();
				tx.rollback();
		}finally {
			session.close();
			
		}
		return 0;
	}
}
