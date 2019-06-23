package com.zsg.dao.impl;

import java.util.Iterator;
import java.util.List;


import org.apache.struts2.ServletActionContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import com.zsg.bean.User;
import com.zsg.dao.IUserDao_mag;
import com.zsg.utils.HibernateUtils;
import org.hibernate.query.Query;


public class UserDaoImpl_mag implements IUserDao_mag{

	@Override
	public boolean managerLogin(String userName, String password) {
		boolean has = false;
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction tx=null;
		try {
			System.out.println(userName+","+password);
			sessionFactory=HibernateUtils.getSessionFactory();
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			
			List<User> list=null;
			list=session.createQuery("from User").list();
			if(list!=null) {
				Iterator it=list.iterator();
				while(it.hasNext()) {
					User user=(User)it.next();
						if((user.getUsername().equals(userName))&&(user.getPassword().equals(password))&&(user.getUsertype().equals("超级管理员"))) {
							/*ServletActionContext.getRequest().getSession().setAttribute("surnom", user.getUname());*/
				/*			String surnom=(String) ServletActionContext.getRequest().getSession().getAttribute("surnom");
							System.out.println(surnom);*/
			/*				ServletActionContext.getRequest().getSession().setAttribute("uid", user.getUid());
							System.out.println("登陆的用户ID为:"+user.getUid());*/
							int uid=user.getUid();
							ServletActionContext.getRequest().getSession().setAttribute("uid", uid);
							
							int id=(int)ServletActionContext.getRequest().getSession().getAttribute("uid");
							System.out.println("呵呵="+id);
							
							has=true;
							break;
						}else {
							has=false;
						}	
				}
			}
			tx.commit();
			session.clear();
			
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		}finally {
			session.close();
			//sessionFactory.close();
		}
		
		if(has) {
			return true;
		}else {
			return false;
		}
	}

	@Override
	public void save(User user) {
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction tx=null;
		try {
			sessionFactory=HibernateUtils.getSessionFactory();
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			
			session.save(user);
			
			tx.commit();
		} catch (Exception e) {
				tx.rollback();
		}finally {
			session.close();
		}
		
	}

	@Override
	public List<User> findAll() {
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction tx=null;
		List<User> list=null;
		try {
			sessionFactory=HibernateUtils.getSessionFactory();
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			
			Query query=session.createQuery("from User");
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
	public List<User> findKeyWord(String type, String keyword) {
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction tx=null;
		List<User> list=null;
		try {
			sessionFactory=HibernateUtils.getSessionFactory();
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			
		
			System.out.println(type+","+keyword);
			String hql="from User where "+type+" like '%"+keyword+"%'";
			Query query=session.createQuery(hql);
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
	public int deleteUser(int uid) {
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction tx=null;
		
		try {
			sessionFactory=HibernateUtils.getSessionFactory();
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			User user=session.get(User.class, uid);
			session.delete(user);
			
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
	public User findById(int uid) {
		SessionFactory sessionFactory=null;
		Session session=null;
		Transaction tx=null;
		User user=null;
		try {
			sessionFactory=HibernateUtils.getSessionFactory();
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			
			user=session.get(User.class, uid);
			
			tx.commit();
		} catch (Exception e) {
				e.printStackTrace();
				tx.rollback();
		}finally {
			session.close();
			
		}
		return user;
	}
	
}
