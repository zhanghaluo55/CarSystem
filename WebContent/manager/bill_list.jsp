<%@page import="com.zsg.bean.Car"%>
<%@page import="com.zsg.factory.DaoFactory"%>
<%@page import="com.zsg.bean.User"%>
<%@page import="com.zsg.bean.Order"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="author" content="order by dede58.com"/>
        <title>账单列表</title>
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global_color.css" /> 
    </head>
    <body onload="initialYearAndMonth();">
        <!--Logo区域开始-->
        <div id="header">
            <img src="../images/logo2.png" alt="logo" class="left"/>
            <a href="exitAction">[退出]</a>            
        </div>
        <!--Logo区域结束-->
        <!--导航区域开始-->
        <div id="navi">                        
            <ul id="menu">
                <li><a href="index.jsp" class="index_on"></a></li>		<!--主页面  -->
                <li><a href="role_list.jsp" class="role_off"></a></li> <!--用户管理  -->
                <li><a href="car_list.jsp" class="account_off"></a></li><!-- 汽车 -->
                <li><a href="bill_list.jsp" class="bill_off"></a></li><!--账单  -->
                <li><a href="user_info.jsp" class="information_off"></a></li><!--个人信息  -->
                <li><a href="user_modi_pwd.jsp" class="password_off"></a></li><!--修改密码  -->
            </ul>
        </div>
        <!--导航区域结束-->
        <!--主要区域开始-->
        <div id="main">
            <form action="orderOperation" method="">
                <!--查询-->
                    <div class="search_add">
                    <div>
                        查找类型：
                        <select id="selModules" class="select_search" name="type">
                            <option value="oid">订单ID</option>
                            <option value="odate">购买日期</option>
                            <option value="uoid">用户ID</option>
                            <option value="coid">汽车ID</option>
                        </select>
                    </div>
                    <div>关键字：<input type="text" value="" name="keyword" size="12" style="width:100px;height:25px;"/></div>
                    <div><input type="submit" value="搜索" class="btn_search"/></div>
              <!--       <input type="button" value="批量删除" class="btn_add"> -->
                    <input type="button" value="增加" class="btn_add" onclick="location.href='bill_add.jsp';" />
                </div>
                <!--数据区域：用表格展示数据-->     
                <div id="data">            
                    <table id="datalist">
                    <tr>
                    
                        <th class="width50">订单ID</th>
                        <th class="width70">用户ID</th>
                        <th class="width100">用户名</th>
                        <th class="width200">车型名称</th>
                        <th>总额</th>
                        <th class="width50">数量</th>
                        <th>订单号</th>
                        <th class="width100">日期</th>
                        <th class="width100">支付状态</th>                                                        
                        <th class="width200"></th>
                    </tr>
                    <%
                    	List<Order> orders=(List<Order>)request.getAttribute("Order");
                    	if(orders!=null)
                    		for(Order order:orders){
                    			User user=DaoFactory.getUserDaoInstance().findById(order.getUser().getUid());
                    			Car car=DaoFactory.getCarDaoInstance().findById(order.getCar().getCid());
                    %>
                    <tr>
                    	
                        <td><%=order.getOid() %></td>
                        <td><%=user.getUid() %></td>
                        <td><%=user.getUsername() %></td>
                        <td><%=car.getCname() %></td>
                        <td><%=order.getPrice() %></td>
                        <td><%=order.getQunatity() %></td> 
                        <td><%=order.getOut_trade_no() %></td>  
                        <td><%=order.getOdate() %></td>
                        <td><%=order.getFlag() %></td>                          
						<td><input type="button" value="修改" class="btn_modify" onclick="location.href='orderDetail?oid=<%=order.getOid()%>';" />
                            <input type="button" value="删除" class="btn_delete" onClick="location.href='deleteOrderAction?oid=<%=order.getOid()%>'" /></td>
                    </tr>
                    <%} %>
                </table>
                
                </div>                    
                <!--分页-->
                <div id="pages">
                    <a href="#">首页</a>
        	        <a href="#">上一页</a>
                    <a href="#" class="current_page">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                    <a href="#">下一页</a>
                    <a href="#">末页</a>
                </div>                    
            </form>
        </div>
        <!--主要区域结束-->
        <div id="footer">
            <p>[源自北美的技术，最优秀的师资，最真实的企业环境，最适用的实战项目]</p>
            <p>版权所有(C)加拿大达内IT培训集团公司 </p>
        </div>
    </body>
</html>
