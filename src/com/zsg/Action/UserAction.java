package com.zsg.Action;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.eclipse.jdt.internal.compiler.ast.ThrowStatement;

import com.opensymphony.xwork2.ActionSupport;
import com.zsg.bean.PageBean;
import com.zsg.bean.User;
import com.zsg.dao.impl.UserDaoImpl;

import com.zsg.factory.DaoFactory;

public class UserAction extends ActionSupport{
	private User user;
	private int page;
	private String password;
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	
/*	public String execute() throws Exception{
		PageBean pageBean=DaoFactory.getUserDaoInstance().getPageBean(5, page);
		PageBean pageBean=daoImpl.getPageBean(5, page);
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("pageBean", pageBean);
		return SUCCESS;
	}*/
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String registered() throws Exception{
		List<User> list=DaoFactory.getUserDaoInstance().findAll();
		int flag;
		flag=0;
		System.out.println(user.getUsername());
		for(Iterator iter=list.iterator();iter.hasNext();) {
			User user1=(User)iter.next();
			System.out.println(user1.getUsername());
			if(user.getUsername().equals(user1.getUsername())){
			     flag=1;
			}
		}
		if(flag==1){
	      addFieldError("error", "该用户名已经存在");
	      return "error";
	      }else{
	    	  	user.setUsertype("普通用户");
	    	  	user.setGender("保密");
	    	  	user.setUdate(new Date());
	    		DaoFactory.getUserDaoInstance().save(user);
	    		ServletActionContext.getRequest().getSession().setAttribute("msg", "注册成功");
	    		ServletActionContext.getRequest().getSession().setAttribute("url", "user_login.jsp");
	    		return "registered";
	      }

	}
	public String Update() throws Exception{
		User user1=(User)ServletActionContext.getRequest().getSession().getAttribute("user1");
		user.setPassword(user1.getPassword());
		user.setUsername(user1.getUsername());
		user.setUsertype(user1.getUsertype());
		
		DaoFactory.getUserDaoInstance().update(user1.getUid(), user); 
		ServletActionContext.getRequest().getSession().setAttribute("user1", user);
		return "update";
	}
	
	public String updatePassword() throws Exception{
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user1");
		user.setPassword(password);
		DaoFactory.getUserDaoInstance().update(user.getUid(), user);
		return "updatePassword";
	}
	public String exitUser() {
		
		ServletActionContext.getRequest().getSession().setAttribute("user1",null);
		ServletActionContext.getRequest().getSession().setAttribute("acount",null);
		ServletActionContext.getRequest().getSession().setAttribute("orderlist",null);
		return "exit";
	}
	
/*	public String preUpdate() throws Exception{
		User user1=new User();
		String name=(String)ServletActionContext.getRequest().getSession().getAttribute("username");
		List<User> list=DaoFactory.getUserDaoInstance().findById("username", name);
		user1=list.get(0);
		ServletActionContext.getRequest().getSession().setAttribute("user", user1);
		return "preUpdate";
	}*/
	
}
