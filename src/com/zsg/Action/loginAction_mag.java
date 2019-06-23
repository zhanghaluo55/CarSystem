package com.zsg.Action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.zsg.factory.DaoFactory;

public class loginAction_mag extends ActionSupport{
	private String username;
	private String password;
	
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
	public String managerLogin() throws Exception{
		System.out.println(username+","+password);
		boolean flag;
		flag=DaoFactory.getUserDao_magInstance().managerLogin(username, password);
		
		if(flag==true) {
			System.out.println("��½�ɹ���");
			return SUCCESS;
		}else {
			ServletActionContext.getRequest().setAttribute("loginError", "�û������������!");
			System.out.println("��½ʧ�ܣ�");
			return ERROR;
		}
	}
	public String exit() throws Exception{
		ServletActionContext.getRequest().getSession().removeAttribute("uid");
		/*System.out.println("ID="+a);*/
		
		return SUCCESS;
	}
	
}
