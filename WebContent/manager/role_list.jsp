<%@page import="com.zsg.bean.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="author" content="order by dede58.com"/>
        <title>用户列表</title>        
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
        <div id="main">
            <form action="userOperation" method="post">
                            <div class="search_add">
                    <div>
                        查找类型：
                        <select id="selModules" class="select_search" name="type">
                            <option value="userName">用户名</option>
                            <option value="userType">用户类型</option>
                            <option value="uid">用户ID</option>
                        </select>
                    </div>
                    <div>关键字：<input type="text" value="" name="keyword" class="text_search width200" /></div>
                    
                    <div><input type="submit" value="搜索" class="btn_search"/></div>
                   <!--  <input type="button" value="批量删除" class="btn_add"> -->
                   <!--  <input type="button" value="密码重置" class="btn_add" onclick="resetPwd();" /> -->
                    <input type="button" value="增加" class="btn_add" onclick="location.href='role_add.jsp';" />
                </div>

                <!--数据区域：用表格展示数据-->     
                <div id="data">                      
                    <table id="datalist">
                        <tr> 
                       		<!--  <th></th>    -->                        
                            <th>用户ID</th>
                            <th>用户名</th>
                            <th>性别</th>
                            <th>密码</th>
                            <th>真实姓名</th>
                            <th>用户类型</th>
							<th>录入日期</th>
                            <th></th>
                        </tr>
                <%
  					List<User> users=(List<User>)request.getAttribute("User");
  					if(users!=null)
  						for(User user:users){	
  				%> 
  				<tr>
  				<!-- 	<td><input type="checkbox" name="dels" id="dels" value=""></td> -->
  					<td><%=user.getUid() %></td>
  					<td><%=user.getUsername() %></td>
  					<td><%=user.getGender() %></td>
  					<td><%=user.getPassword() %></td>
  					<td><%=user.getRealname() %></td>
  					<td><%=user.getUsertype() %></td>
					<td><%=user.getUdate() %></td>
  					<td>
                        <input type="button" value="修改" class="btn_modify" onclick="location.href='updateUserAction?uid=<%=user.getUid()%>';"/>
                        <!-- <input type="button" value="修改" class="btn_modify" onclick="location.href='role_modi.jsp';"/> -->
                        <input type="button" value="删除" name="uid" class="btn_delete" onClick="location.href='deleteUserAction?uid=<%=user.getUid()%>'"/>
                        
                    </td>
  				</tr>
  				<%} %>
                    </table>
                </div> 
                <!--分页-->
                <div id="pages">
        	        <a href="#">上一页</a>
                    <a href="#" class="current_page">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                    <a href="#">下一页</a>
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