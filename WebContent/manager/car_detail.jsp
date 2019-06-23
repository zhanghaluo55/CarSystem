<%@page import="com.zsg.factory.DaoFactory"%>
<%@page import="com.zsg.bean.Car"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="author" content="order by dede58.com"/>
        <title>汽车详细信息</title>
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global_color.css" /> 
    </head>
    <body>
        <!--Logo区域开始-->
        <div id="header">
            <img src="../images/logo2.png" alt="logo" class="left" />
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
        <%
        	String cid=(String)request.getAttribute("cid");
        	int id=Integer.parseInt(cid);
       		System.out.println(id);
       		Car car=new Car();
       		car=DaoFactory.getCarDaoInstance().findById(id);
       		
        %> 
        
        <!--主要区域开始-->
        <div id="main">            
            <form action="DoupdateCar" method="post" class="main_form">
                <!--必填项-->
                
                <div class="text_info clearfix"><span>汽车ID</span></div>
                <div class="input_info"><input type="text" readonly class="readonly" name="cid" value="<%=cid %>"/></div>
                
                <div class="text_info clearfix"><span>价格：</span></div>
                <div class="input_info"><input type="text"  class="readonly" name="car.price" value="<%=car.getPrice() %>"/></div>

				<div class="text_info clearfix"><span>标题：</span></div>
                <div class="input_info"><input type="text"  class="readonly" name="car.title" value="<%=car.getTitle() %>"/></div>
                
                
               	<div class="text_info clearfix"><span>车型：</span></div>
                <div class="input_info"><input type="text"  class="readonly" name="car.cartype" value="<%=car.getCartype() %>"/></div>
                
                <div class="text_info clearfix"><span>销量：</span></div>
                <div class="input_info"><input type="text"  class="readonly" name="car.sales" value="<%=car.getSales() %>"/></div> 
                
               
               	<div class="text_info clearfix"><span>库存：</span></div>
                <div class="input_info"><input type="text"  class="readonly" name="car.quantity" value="<%=car.getQuantity() %>" /></div> 
                
               	<div class="text_info clearfix"><span>厂商：</span></div>
               	<div class="input_info"><input type="text"  class="readonly" name="car.factory" value="<%=car.getFactory() %>" /></div> 
               	
                <div class="text_info clearfix"><span>品牌：</span></div>
               	<div class="input_info"><input type="text"  class="readonly" name="car.brand" value="<%=car.getBrand() %>" /></div> 
                
                <div class="text_info clearfix"><span>车型名称：</span></div>
               	<div class="input_info"><input type="text"  class="readonly" name="car.cname" value="<%=car.getCname() %>"  size="30"/></div> 
               
               	<div class="text_info clearfix" style="display:none"><span>图片名：</span></div>
               	<div class="input_info" style="display:none"><input type="text" readonly name="car.picturePath" class="readonly" value="<%=car.getPicturePath() %>"  size="30"/></div> 
               	

                <!--操作按钮-->
                <div class="button_info clearfix">
                	 <input type="submit" value="修改" class="btn_save" />
                    <input type="button" value="返回" class="btn_save" onclick="location.href='car_list.jsp';" />
                </div>
            </form>  
        </div>
        <!--主要区域结束-->
        <div id="footer">
            <span>[源自北美的技术，最优秀的师资，最真实的企业环境，最适用的实战项目]</span>
            <br />
            <span>版权所有(C)加拿大达内IT培训集团公司 </span>
        </div>
    </body>
</html>
