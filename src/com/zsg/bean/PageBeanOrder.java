package com.zsg.bean;

import java.util.List;

public class PageBeanOrder {
	private List<Order> list;
	private int allRows;
	private int totalPage;
	private int currentPage;
	public List<Order> getList() {
		return list;
	}
	public void setList(List<Order> list) {
		this.list = list;
	}
	public int getAllRows() {
		return allRows;
	}
	public void setAllRows(int allRows) {
		this.allRows = allRows;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	
	public int getTotalPages(int pageSize,int allRows) {
		int totalPage=(allRows%pageSize==0)?(allRows/pageSize):(allRows/pageSize)+1;
		return totalPage;
	}
	
	public int getCurrentPageOffset(int pageSize,int currentPage) {
		int offset=pageSize*(currentPage-1);	
		return offset;
	}
	
	public int getCurPage(int page) {
		int currentPage=(page==0)?1:page;
		return currentPage;
	}
}
