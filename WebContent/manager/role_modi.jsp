<%@page import="com.zsg.factory.DaoFactory"%>
<%@page import="com.zsg.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="author" content="order by dede58.com"/>
        <title>修改用户信息</title>
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global_color.css" /> 
    </head>
    <body>

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
        <%
        	String uid=(String)request.getAttribute("uid");
        	int id=Integer.parseInt(uid);
        	User user=DaoFactory.getUserDaoInstance().findById(id);
        %>
        
        <div id="main">           
        
            <form action="DoupdateUser" class="main_form">
            	<div class="text_info clearfix"><span>用户id：</span></div>
                <div class="input_info">
                    <input type="text" class="width200" value="<%=uid %>"  name="uid"/>
                    <span class="required">*</span>
                </div>
            
                <div class="text_info clearfix"><span>用户名：</span></div>
                <div class="input_info">
                    <input type="text" class="width200"  name="user.username" value="<%=user.getUsername()%>"/>
                    <span class="required">*</span>
                </div>
                
                <div class="text_info clearfix"><span>密码：</span></div>
                <div class="input_info">
                    <input type="text" class="width200"  name="user.password" value="<%=user.getPassword()%>"/>
                    <span class="required">*</span>
                </div>    
                
                <div class="text_info clearfix"><span>真实姓名：</span></div>
                <div class="input_info">
                    <input type="text" class="width200"   name="user.realname" value="<%=user.getRealname()%>"/>
                    <span class="required">*</span>
                </div>                    
                
                <div class="text_info clearfix"><span>昵称：</span></div>
                <div class="input_info">
                    <input type="text" class="width200"   name="user.uname" value="<%=user.getUname()%>"/>
                    <span class="required">*</span>
                </div>  
                
                <div class="text_info clearfix"><span>用户类型：</span></div>
                <div class="input_info">
                   	<select name="user.gender">
                   		<option value="男">男</option>
                   		<option value="女">女</option>
                   	</select>
                    <span class="required">*</span>
                </div>   
                
                <div class="text_info clearfix"><span>用户类型：</span></div>
                <div class="input_info">
                   	<select name="user.usertype">
                   		<option value="管理员">管理员</option>
                   		<option value="普通用户">普通用户</option>
                   	</select>
                    <span class="required">*</span>
                </div>   
                
				<div class="text_info clearfix"><span>录入日期：</span></div>
                <div class="input_info">
   					<input type="date" class="width200" name="user.udate" value="<%=user.getUdate()%>"/>
                    <span class="required">*</span>
                </div>  
				
               <div class="text_info clearfix"><span>手机号码：</span></div>
                <div class="input_info">
                    <input type="text" class="width200" name="user.phone" value="<%=user.getPhone()%>"/>
                    <span class="required">*</span>
                </div>    

                <div class="button_info clearfix">
                    <input type="submit" value="保存" class="btn_save" />
                    <input type="button" value="取消" class="btn_save" />
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