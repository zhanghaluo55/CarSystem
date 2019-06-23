package com.zsg.Action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.zsg.bean.User;
import com.zsg.factory.DaoFactory;

public class userAction_mag extends ActionSupport{
	
	private User user;
	private String uid;
	private String type;
	private String keyword;
	private String oldPassword;
	private String newPassword;
	public static final String UPDATE="update";
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}
	
	public String getOldPassword() {
		return oldPassword;
	}

	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	@Override
	public String execute() throws Exception {
		System.out.println(uid);
		ServletActionContext.getRequest().setAttribute("uid", uid);
		return UPDATE;
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
		if(flag==1) {
			ServletActionContext.getRequest().setAttribute("addError", "该用户名已存在!");
			System.out.println("添加失败");
			
			return ERROR;
		}else {
			DaoFactory.getUserDaoInstance().save(user);
			System.out.println("添加成功");
			return SUCCESS;
		}
	}
	
	public String searchUser() throws Exception{
		System.out.println(type+","+keyword);
		List<User> userList=new ArrayList<User>();
		if(keyword!=null) {
			userList=DaoFactory.getUserDao_magInstance().findKeyWord(type, keyword);
			ServletActionContext.getRequest().setAttribute("User", userList);
		}else {
			userList=DaoFactory.getUserDaoInstance().findAll();
			ServletActionContext.getRequest().setAttribute("User", userList);
		}
		return SUCCESS;
	}
	
	public String deleteUser() throws Exception{
		System.out.println(uid);
		int r=0;
		int a=Integer.parseInt(uid);
		r=DaoFactory.getUserDao_magInstance().deleteUser(a);
		if(r>0) {
			System.out.println("删除成功！");
			return SUCCESS;
		}else {
			System.out.println("删除失败！");
			return ERROR;
		}
	}
	
	public String updateUser() throws Exception{
		int id=Integer.parseInt(uid);
		int r=0;
		System.out.println("改成用户名="+user.getUsername());
		DaoFactory.getUserDaoInstance().update(id, user);
/*		if(r>0) {
			ServletActionContext.getRequest().setAttribute("updateSuccess", "修改成功!");*/
			System.out.println("修改成功!");
			return SUCCESS;
/*		}else {
			System.out.println("修改失败!");
			return ERROR;
		}	*/
	}
	
	public String alterPassword() throws Exception{
		int id=(int)ServletActionContext.getRequest().getSession().getAttribute("uid");
		System.out.println(id);
		User user2=DaoFactory.getUserDaoInstance().findById(id);
		if(user2.getPassword().equals(oldPassword)) {
			user2.setPassword(newPassword);
			DaoFactory.getUserDaoInstance().update(id, user2);
		}
		return SUCCESS;
	}
	 
}
