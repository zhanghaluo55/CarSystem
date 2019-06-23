package com.zsg.dao;

import java.util.List;

import com.zsg.bean.PageBean;
import com.zsg.bean.User;

public interface IUserDao {
		public User login(String username);
		public void save(User user);
		public void delete(int id);
		public void update(int id,User user);
		public List<User> findAll();
		public User findById(int id);
		public List<User> findById(String type,String id)throws Exception;
	
		public List<User> queryByPage(String hql,int offset,int pageSize);
		/*public int getAllRowCount(String hql);
		public PageBean getPageBean(int pageSize,int page);*/
		
}
