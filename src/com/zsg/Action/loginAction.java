package com.zsg.Action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.zsg.bean.User;
import com.zsg.factory.DaoFactory;

public class loginAction extends ActionSupport{
	private String username;
	private String password;
	private String message="error";
	public String userlogin() throws Exception{
		System.out.println(username);
	    if(username==null||username.length()==0){
	        addFieldError("error", "用户名不能为空!");
	      }else{
	    	  User user=new User();
	    	  user=DaoFactory.getUserDaoInstance().login(username);
	    	  System.out.println(user.getPassword());
	    	  if(user.getPassword()==null){
	          addFieldError("error", "该用户尚未注册");
	        }else{
	            if(username.equals(user.getUsername())){
	              if(password.equals(user.getPassword())){
	                message="userlogin";
	                User user1=new User();
	                List<User> list=DaoFactory.getUserDaoInstance().findById("username",username);
	                user1=list.get(0);
	                ServletActionContext.getRequest().getSession().setAttribute("user1", user1);
	                ServletActionContext.getRequest().getSession().setAttribute("acount", 0 );
	              }else{
	                addFieldError("error", "登录密码不正确");
	              }
	            }
	          }
	        }
	return message;   
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
}
