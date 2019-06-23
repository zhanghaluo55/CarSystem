package com.zsg.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.zsg.bean.User;
import com.zsg.bean.PageBean;
import com.zsg.dao.IUserDao;
import com.zsg.factory.DaoFactory;
import com.zsg.utils.HibernateUtils;

public class UserDaoImpl implements IUserDao {

	@Override
	public User login(String username) {
		Session session=null;
		User user=new User();
		try {
			System.out.println("asd");
			session=HibernateUtils.getSession();
			
			session.beginTransaction();
			Query query=session.createQuery("from User where username = '"+username+"'");
			List<User> list=query.list();
			user=list.get(0);
			session.getTransaction().commit();
			
		} catch (Exception e) {
			e.getStackTrace();
			session.getTransaction().rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		return user;

	}

	@Override
	public void save(User user) {
		Session session=null;
		try {
			session=HibernateUtils.getSession();	
			session.beginTransaction();
			
			session.save(user);	
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
			
			User user=(User)session.get(User.class, id);
			session.delete(user);
			session.getTransaction().commit();
			
		} catch (Exception e) {
			e.getStackTrace();
			session.getTransaction().rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}

	}

	@Override
	public void update(int id, User user) {
		Session session=null;
		try {
			session=HibernateUtils.getSession();	
			session.beginTransaction();
			
			User user1=(User)session.get(User.class, id);
			user1.setUsername(user.getUsername());
			user1.setPassword(user.getPassword());
			user1.setGender(user.getGender());
			user1.setPhone(user.getPhone());
			user1.setRealname(user.getRealname());
			user1.setUdate(user.getUdate());
			user1.setUname(user.getUname());
			user1.setUsertype(user.getUsertype());
			
			session.update(user1);
			
			session.getTransaction().commit();
			
		} catch (Exception e) {
			e.getStackTrace();
			session.getTransaction().rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}

	}

	@Override
	public List<User> findAll() {
		Session session=null;
		User user=new User();
		List<User> list=null;
		try {
			session=HibernateUtils.getSession();
			session.beginTransaction();
			Query query=session.createQuery("from User");
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
	public User findById(int id) {
		Session session=null;
		User user=new User();
		try {
			session=HibernateUtils.getSession();
			session.beginTransaction();
			user=(User)session.get(User.class,id);
			session.getTransaction().commit();
		} catch (Exception e) {
			e.getStackTrace();
			session.getTransaction().rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
		return user;
	}

	@Override
	public List<User> findById(String type, String id) throws Exception {
		Session session=null;
		User user=new User();
		List<User> list=null;
		try {
			session=HibernateUtils.getSession();
			session.beginTransaction();
			Query query=session.createQuery("from User where "+type+ " = '"+id+"'");
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
	public List<User> queryByPage(String hql, int offset, int pageSize) {
		Session session=null;
		List<User> list=null;
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
/*
	@Override
	public int getAllRowCount(String hql) {
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
	}*/


	/*public PageBean getPageBean(int pageSize, int page) {
		PageBean pageBean=new PageBean();
			
		String hql="from User";
		int allRows=DaoFactory.getUserDaoInstance().getAllRowCount(hql);
		int totalPage=pageBean.getTotalPages(pageSize,allRows);
		int currentPage=pageBean.getCurPage(page);
		int offset=pageBean.getCurrentPageOffset(pageSize, currentPage);
		
		List<User> list=DaoFactory.getUserDaoInstance().queryByPage(hql, offset, pageSize);
		pageBean.setList(list);
		pageBean.setAllRows(allRows);
		pageBean.setCurrentPage(currentPage);
		pageBean.setTotalPage(totalPage);
		
		return pageBean;
	}
	*/
}
