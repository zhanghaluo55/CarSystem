package com.zsg.Action;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.zsg.bean.Car;
import com.zsg.bean.Cart;
import com.zsg.bean.CartItem;
import com.zsg.bean.Order;
import com.zsg.bean.PageBean;
import com.zsg.bean.User;
import com.zsg.factory.DaoFactory;
import com.zsg.utils.PageUtils;
import com.zsg.utils.UtilsOrderID;

public class CarAction {
	private List<Car> list=null;
	private Car car;
	private Order order;
	private int page;
	private String keyword;
	private int id;
	private String out_trade_no;
	
	public static int k;
	public String list() throws Exception{
		list=DaoFactory.getCarDaoInstance().findAll();
		ServletActionContext.getRequest().getSession().setAttribute("list", list);
		return "list";
	}
	
	public String pagelist() throws Exception{
		System.out.println(page);
	
		if(ServletActionContext.getRequest().getSession().getAttribute("pageBean")==null) {
		PageBean pageBean=PageUtils.getPageBean(9, page,"from Car");
		ServletActionContext.getRequest().getSession().setAttribute("hql", "from Car");
		ServletActionContext.getRequest().getSession().setAttribute("pageBean", pageBean);
		}else {
			String hql1=(String)ServletActionContext.getRequest().getSession().getAttribute("hql");
			PageBean pageBean=PageUtils.getPageBean(9, page,hql1);
			ServletActionContext.getRequest().getSession().setAttribute("pageBean", pageBean);
		}
		return "pagelist";
	}

	public String carIntro() throws Exception{
		Car car1=DaoFactory.getCarDaoInstance().findById(car.getCid());
		List<Car> brandcarL=DaoFactory.getCarDaoInstance().findById("brand", car1.getBrand());
		ServletActionContext.getRequest().getSession().setAttribute("car",car1);
		ServletActionContext.getRequest().getSession().setAttribute("brandcarL",brandcarL);
		return "carIntro";
	}
	
	public String search() throws Exception{
		
		String hql="from Car where cname like '%"+keyword+"%' or price like '%"
					+keyword+"%' or brand like '%"+keyword+"%' or cartype like '%"+keyword+"%'" ;
		
		PageBean pageBean=PageUtils.getPageBean(9, page,hql);
		ServletActionContext.getRequest().getSession().setAttribute("pageBean", pageBean);
		ServletActionContext.getRequest().getSession().setAttribute("hql", hql);
		return "search";
	}
	public String selectbyCartype() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String cartype=(String)request.getParameter("cartype");
		String hql="from Car where cartype="+cartype;
		
		PageBean pageBean=PageUtils.getPageBean(9, page,hql);
		ServletActionContext.getRequest().getSession().setAttribute("pageBean", pageBean);
		ServletActionContext.getRequest().getSession().setAttribute("hql", hql);
		return "selectbyCartype";
	}
	public String selectbyBrand() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String brand=(String)request.getParameter("brand");
		String hql="from Car where brand="+brand;
		
		PageBean pageBean=PageUtils.getPageBean(9, page,hql);
		ServletActionContext.getRequest().getSession().setAttribute("pageBean", pageBean);
		ServletActionContext.getRequest().getSession().setAttribute("hql", hql);
		return "selectbyBrand";
	}
	public String selectbyPrice() {
		HttpServletRequest request = ServletActionContext.getRequest();
		float min=Float.parseFloat((String)request.getParameter("min"));
		float max=Float.parseFloat((String)request.getParameter("max"));
		String hql="from Car where price>="+min+" and price<="+max;
		
		PageBean pageBean=PageUtils.getPageBean(9, page,hql);
		ServletActionContext.getRequest().getSession().setAttribute("pageBean", pageBean);
		ServletActionContext.getRequest().getSession().setAttribute("hql", hql);
		return "selectbyPrice";
	}
	public String buy() {
		Car car=(Car)ServletActionContext.getRequest().getSession().getAttribute("car");
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user1");
		
		Order order=new Order();
		
		order.setQunatity(1);
		order.setPrice(car.getPrice());
		order.setOdate(new Date());
		order.setUser(user);
		order.setCar(car);
		order.setFlag("未付款");
		order.setOut_trade_no(UtilsOrderID.getOrderIdByTime());
		DaoFactory.getOrderDaoInstance().save(order);
		List<Order> orderlist=new ArrayList<>();
		orderlist.add(order);
		ServletActionContext.getRequest().getSession().setAttribute("orderlist",orderlist);
		return "buy";
	}
	public String cartbuy() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		Cart cart=(Cart)session.get("cart");
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user1");
		
		Order order=new Order();
		order.setCar(cart.getCarMap().get(id).getCar());
		order.setFlag("未付款");
		order.setOdate(new Date());
		order.setPrice(cart.getCarMap().get(id).getPrice());
		order.setQunatity(cart.getCarMap().get(id).getQuantity());
		order.setUser(user);
		order.setOut_trade_no(UtilsOrderID.getOrderIdByTime());
		DaoFactory.getOrderDaoInstance().save(order);
		List<Order> orderlist=new ArrayList<>();
		orderlist.add(order);
		ServletActionContext.getRequest().getSession().setAttribute("orderlist",orderlist);
		
		return "cartbuy";
	}
	public String buyAny() {
			Map<String, Object> session = ActionContext.getContext().getSession();
			Cart cart=(Cart)session.get("cart");
			/*List<Car> buycarlist=(List<Car>)ServletActionContext.getRequest().getSession().getAttribute("buycarlist");*/
			User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user1");
			Map<Integer, CartItem> carMap=cart.getCarMap();
			
			List<Order> orderlist=new ArrayList<>();	
			for (Map.Entry<Integer, CartItem> entry : carMap.entrySet()) { 
				CartItem cartItem=entry.getValue();
				
				Order order=new Order();
				order.setQunatity(cartItem.getQuantity());
				order.setPrice(cartItem.getPrice());
				order.setOdate(new Date());
				order.setUser(user);
				order.setCar(cartItem.getCar());
				System.out.println(cartItem.getCar().getPicturePath());
				order.setFlag("未付款");
				order.setOut_trade_no(UtilsOrderID.getOrderIdByTime());
				DaoFactory.getOrderDaoInstance().save(order);
				orderlist.add(order);
				ServletActionContext.getRequest().getSession().setAttribute("cart",null);
				ServletActionContext.getRequest().getSession().setAttribute("orderlist",orderlist);
			}
			return "buyAny";
	}
	
	public String buyYes(){
		List<Order> orderlist=(ArrayList<Order>)ServletActionContext.getRequest().getSession().getAttribute("orderlist");
		for(Order order: orderlist ) {
			order.setFlag("已付款");
			String out_trade_no1 = null;
			try {
				out_trade_no1 = new String(out_trade_no.getBytes("ISO-8859-1"),"utf-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			/*order.setOut_trade_no(out_trade_no1);*/
			Car car1=order.getCar();
			car1.setSales(car1.getSales()+order.getQunatity());
			car1.setQuantity(car1.getQuantity()-order.getQunatity());
			
			DaoFactory.getCarDaoInstance().update(car1.getCid(),car1);
			DaoFactory.getOrderDaoInstance().update(order.getOid(), order);
		}
		return "buyYes";
	}
	public String orderbysb() {
		
		HttpServletRequest request = ServletActionContext.getRequest();
		
		String sb=(String)request.getParameter("sb");
		String hql=null;
		System.out.println(k);
		if(k%2==1) {hql="from Car order by "+sb+" desc"; k++;}else {hql="from Car order by "+sb+" asc"; k++;}
		
		
		PageBean pageBean=PageUtils.getPageBean(9, page,hql);
		ServletActionContext.getRequest().getSession().setAttribute("pageBean", pageBean);
		ServletActionContext.getRequest().getSession().setAttribute("hql", hql);
		return "orderbysb";
	}
	
	
	public List<Car> getList() {
		return list;
	}

	public void setList(List<Car> list) {
		this.list = list;
	}



	public Car getCar() {
		return car;
	}

	public void setCar(Car car) {
		this.car = car;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getOut_trade_no() {
		return out_trade_no;
	}

	public void setOut_trade_no(String out_trade_no) {
		this.out_trade_no = out_trade_no;
	}

	
}
