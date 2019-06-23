package com.zsg.Action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.zsg.Service.BusinessService;
import com.zsg.bean.Cart;
import com.zsg.bean.CartItem;
import com.zsg.bean.User;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
public class GoodsAction extends ActionSupport{
	  private int id;
	  private int quantity;
	  
	  public String addCart()
	  {
	    Map<String, Object> session = ActionContext.getContext().getSession();
	    Cart cart = (Cart)session.get("cart");
	    
	    int acount1 = ((Integer)ServletActionContext.getRequest().getSession().getAttribute("acount")).intValue();
	    int acount = acount1 + 1;
	    ServletActionContext.getRequest().getSession().setAttribute("acount", Integer.valueOf(acount));
	    
	    User user = (User)ServletActionContext.getRequest().getSession().getAttribute("user1");
	    if (cart == null)
	    {
	      cart = new Cart();
	      session.put("cart", cart);
	      cart.setUsername(user.getUsername());
	    }
	    if (cart.getUsername() != user.getUsername()) {
	      cart = null;
	    }
	    if (cart == null)
	    {
	      cart = new Cart();
	      session.put("cart", cart);
	      cart.setUsername(user.getUsername());
	    }
	    BusinessService.buyGoods(this.id, cart);
	    
	    cart.setUsername(user.getUsername());
	    
	    return "addGoods";
	  }
	  
	  public String delCart()
	  {
	    Map<String, Object> session = ActionContext.getContext().getSession();
	    Cart cart = (Cart)session.get("cart");
	    
	    BusinessService.delGoods(this.id, cart);
	    int acount1 = ((Integer)ServletActionContext.getRequest().getSession().getAttribute("acount")).intValue();
	    int acount = acount1 - 1;
	    ServletActionContext.getRequest().getSession().setAttribute("acount", Integer.valueOf(acount));
	    
	    return "delGoods";
	  }
	  
	  public String removeCart()
	  {
	    Map<String, Object> session = ActionContext.getContext().getSession();
	    Cart cart = (Cart)session.get("cart");
	    
	    int acount1 = ((Integer)ServletActionContext.getRequest().getSession().getAttribute("acount")).intValue();
	    int acount = acount1 - ((CartItem)cart.getCarMap().get(Integer.valueOf(this.id))).getQuantity();
	    ServletActionContext.getRequest().getSession().setAttribute("acount", Integer.valueOf(acount));
	    
	    BusinessService.removeGoods(this.id, cart);
	    return "removeCart";
	  }
	  
	  public String updateCart()
	  {
	    Map<String, Object> session = ActionContext.getContext().getSession();
	    Cart cart = (Cart)session.get("cart");
	    
	    BusinessService.updateGoods(this.id, cart, this.quantity);
	    
	    return "updateGoods";
	  }
	  
	  public int getId()
	  {
	    return this.id;
	  }
	  
	  public void setId(int id)
	  {
	    this.id = id;
	  }
	  
	  public int getQuantity()
	  {
	    return this.quantity;
	  }
	  
	  public void setQuantity(int quantity)
	  {
	    this.quantity = quantity;
	  }
	}
