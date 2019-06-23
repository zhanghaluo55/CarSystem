package com.zsg.dao.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.zsg.bean.Car;
import com.zsg.bean.Car;
import com.zsg.bean.User;
import com.zsg.dao.ICarDao;
import com.zsg.utils.HibernateUtils;


public class CarDaoImpl implements ICarDao{

	@Override
	public void login(String username, String password) {
		
	}

	@Override
	public void save(Car car) {
		Session session=null;
		try {
			session=HibernateUtils.getSession();
			session.beginTransaction();
			session.save(car);
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
			Car car=(Car)session.get(Car.class,id);
			session.delete(car);
			session.getTransaction().commit();
		} catch (Exception e) {
			e.getStackTrace();
			session.getTransaction().rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
	}

	@Override
	public void update(int id,Car car) {
		Session session=null;
		try {
			session=HibernateUtils.getSession();
			session.beginTransaction();
			//datachedππ‘Ï
			Car car1=(Car)session.get(Car.class,id);
		
			car1.setCname(car.getCname());
			car1.setBrand(car.getBrand());
			car1.setCartype(car.getCartype());
			car1.setCname(car.getCname());
			car1.setFactory(car.getFactory());
			car1.setPicturePath(car.getPicturePath());
			car1.setPrice(car.getPrice());
			car1.setQuantity(car.getQuantity());
			car1.setSales(car.getSales());
			car1.setTitle(car.getTitle());
			
			session.update(car1);
			
			session.getTransaction().commit();
		} catch (Exception e) {
			e.getStackTrace();
			session.getTransaction().rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		
	}

	
	public List<Car> findAll() {
		Session session=null;
		List<Car> carList=null;
		try {
			session=HibernateUtils.getSession();
			session.beginTransaction();
			Query query=session.createQuery("from Car");
			
			carList=query.list();
/*			for(Car user:userList) {
				
			}		*/				  
			session.getTransaction().commit();
		} catch (Exception e) {
			e.getStackTrace();
			session.getTransaction().rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		
		return carList;
	}

	@Override
	public Car findById(int id) {
		Session session=null;
		Car car=new Car();
		try {
			session=HibernateUtils.getSession();
			session.beginTransaction();
			car=(Car)session.get(Car.class,id);
			session.getTransaction().commit();
		} catch (Exception e) {
			e.getStackTrace();
			session.getTransaction().rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		return car;
	}

	@Override
	public List<Car> findById(String type, String id) throws Exception {
		Session session=null;
		List<Car> list=null;
		try {
			session=HibernateUtils.getSession();
			session.beginTransaction();
			Query query=session.createQuery("from Car where "+type+"= '"+id+"'").setMaxResults(3);
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
	public List<Car> queryByPage(String hql, int offset, int pageSize) {
		Session session=null;
		List<Car> list=null;
		System.out.println("asb");
		try {
			session=HibernateUtils.getSession();
			session.beginTransaction();
			Query query=session.createQuery(hql).setFirstResult(offset).setMaxResults(pageSize);
			list=query.list();
			System.out.println("asd");
			System.out.println(list.get(0).getBrand());
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
	public Map<Integer, Car> findAll1() {
		Session session=null;
		List<Car> carsList=null;
		Map<Integer, Car> map=null;
		try {
			session=HibernateUtils.getSession();
			session.beginTransaction();
			Query query=session.createQuery("from Car");
			
			carsList=query.list();
			
			map=(Map<Integer, Car>)carsList;
/*			for(Car user:userList) {
				
			}		*/				  
			session.getTransaction().commit();
		} catch (Exception e) {
			e.getStackTrace();
			session.getTransaction().rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		return map;
	}
	
}
