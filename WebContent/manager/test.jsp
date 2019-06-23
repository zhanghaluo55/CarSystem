<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="author" content="order by dede58.com"/>
        <title>达内－NetCTOSS</title>
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global_color.css" /> 
        
        <script src="jquery-1.9.1.min.js"></script>  
        <script src="jquery.colorbox-min.js"></script>
    </head>
    <body>
        <!--Logo区域开始-->
        <div id="header">
            <img src="../images/logo2.png" alt="logo" class="left"/>
            <a href="#">[退出]</a>            
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
			<form action="upload" method="post" enctype="multipart/form-data">
   				 <label for="myFile">Upload your file</label>
   				 <input type="file" name="myFile"  id="myFile"/>
   				 <input name="cid" type="hidden"   value="<%=request.getAttribute("cid")%>">
   				 <input type="submit" value="Upload" class="btn_add" />
			</form>
        </div>
        <!--主要区域结束-->

    </body>
</html>