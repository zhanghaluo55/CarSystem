package com.zsg.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.zsg.bean.Car;
import com.zsg.dao.ICarDao;
import com.zsg.dao.ICarDao_mag;
import com.zsg.utils.HibernateUtils;
import org.hibernate.query.Query;
public class CarDaoImpl_mag implements ICarDao_mag{

	@Override
	public void save(Car car) {
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction tx=null;
		try {
			sessionFactory=HibernateUtils.getSessionFactory();
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			
			session.save(car);
			
			tx.commit();
		} catch (Exception e) {
				e.printStackTrace();
				tx.rollback();
		}finally {
			session.close();
			
		}
		
	}

	@Override
	public List<Car> findAll() {
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction tx=null;
		List<Car> list=null;
		try {
			sessionFactory=HibernateUtils.getSessionFactory();
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			
			Query query=session.createQuery("from Car");
			list=query.list();

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
	public int deleteCar(int cid) {
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction tx=null;
		try {
			sessionFactory=HibernateUtils.getSessionFactory();
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			Car car=session.get(Car.class, cid);
			session.delete(car);
			
			tx.commit();
		} catch (Exception e) {
				e.printStackTrace();
				tx.rollback();
		}finally {
			session.close();
			
		}
		return 1;
	}

	@Override
	public int updateCar(int cid, Car car) {
		System.out.println("要改成的车名="+car.getCname());
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction tx=null;
		try {
			sessionFactory=HibernateUtils.getSessionFactory();
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			Car car2=(Car)session.get(Car.class, cid);
			car2.setCname(car.getCname());
			car2.setPrice(car.getPrice());
			car2.setTitle(car.getTitle());
			car2.setCartype(car.getCartype());
			car2.setSales(car.getSales());
			car2.setQuantity(car.getQuantity());
			car2.setFactory(car.getFactory());
			car2.setPicturePath(car.getPicturePath());
			session.update(car2);
			
			tx.commit();
		} catch (Exception e) {
				e.printStackTrace();
				tx.rollback();
		}finally {
			session.close();
			
		}
		return 1;
	}

	@Override
	public List<Car> findKeyWord(String type, String keyword) {
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction tx=null;
		List<Car> list=null;
		try {
			sessionFactory=HibernateUtils.getSessionFactory();
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			System.out.println(type+","+keyword);
			String hql="from Car where "+type+" like '%"+keyword+"%'";
			Query query=session.createQuery(hql);
			list=query.list();
			
			for(Car car:list) {
				System.err.println(car.getCid()+"::"+car.getCname()+"::"+car.getCartype()+"::"+car.getPrice());
				
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
	public List<Car> findByPrice(String type, String price1, String price2) {
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction tx=null;
		List<Car> list=null;
		System.out.println(type+"::"+price1+"::"+price2);
		try {
			sessionFactory=HibernateUtils.getSessionFactory();
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			
			System.out.println("根据价格查找："+type+"::"+price1+"::"+price2);
			Criteria criteria=session.createCriteria(Car.class);
/*			Double p1=Double.parseDouble(price1);
			Double p2=Double.parseDouble(price2);*/
			Float p1=Float.parseFloat(price1);
			Float p2=Float.parseFloat(price2);
			System.out.println(p1+"::"+p2);
			
			criteria.add(Restrictions.between(type, p1, p2));
			list=criteria.list();
			
			for(Car car:list) {
				System.out.println(car.getCid()+"::"+car.getCname());
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
	public Car findById(int cid) {
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction tx=null;
		Car car = null;
		try {
			sessionFactory=HibernateUtils.getSessionFactory();
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			
			car=new Car();
			car=session.get(Car.class, cid);
			
			
			tx.commit();
		} catch (Exception e) {
				e.printStackTrace();
				tx.rollback();
		}finally {
			session.close();
			
		}
		return car;
	}

	@Override
	public List<Car> queryByPage(String hql, int offset, int pageSize) {
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction tx=null;
		List<Car> list=null;
		try {
			sessionFactory=HibernateUtils.getSessionFactory();
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			
			Query query=session.createQuery(hql).setFirstResult(offset).setMaxResults(pageSize);
			list=query.list();
		
			
			tx.commit();
		} catch (Exception e) {
				e.printStackTrace();
				tx.rollback();
		}finally {
			session.close();
			
		}
		return list;
	}



}
