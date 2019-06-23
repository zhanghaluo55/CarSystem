<%@page import="org.apache.struts2.ServletActionContext"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page import="com.zsg.factory.DaoFactory"%>
<%@page import="com.zsg.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="author" content="order by dede58.com"/>
        <title>达内－NetCTOSS</title>
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
        <%
        	
        int uid=(int)ServletActionContext.getRequest().getSession().getAttribute("uid");
        User user=DaoFactory.getUserDaoInstance().findById(uid);
        	
        %>
        <% %> 
        <!--主要区域开始-->
        <div id="main">            
            <!--保存操作后的提示信息：成功或者失败-->
            <div id="save_result_info" class="save_success">保存成功！</div><!--保存失败，数据并发错误！-->
             <form action="" method="" class="main_form">
            	
            	<div class="text_info clearfix"><span>用户ID：</span></div>
                <div class="input_info"><input type="text" readonly="readonly" class="readonly" value="<%=user.getUid() %>" /></div>
            	
            	
                <div class="text_info clearfix"><span>管理员用户名：</span></div>
                <div class="input_info"><input type="text" readonly="readonly" class="readonly" value="<%=user.getUsername() %>" /></div>
               
                <div class="text_info clearfix"><span>角色类型：</span></div>
                <div class="input_info">
                    <input type="text" readonly="readonly" class="readonly width400" value="<%=user.getUsertype() %>" />
                </div>
                
                <div class="text_info clearfix"><span>姓名：</span></div>
                <div class="input_info">
                    <input type="text" value="<%=user.getRealname() %>" /> 
                </div>
                
                <div class="text_info clearfix"><span>手机号码：</span></div>
                <div class="input_info">
                    <input type="text" value="<%=user.getPhone() %>" />
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
