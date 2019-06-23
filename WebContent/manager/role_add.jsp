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
    
    	<%
		String errorInfo = (String)request.getAttribute("addError"); 
	if(errorInfo != null) {
	%>
	<script type="text/javascript" language="javascript">
	alert("<%=errorInfo%>");
	 
	</script>
	<%} %>
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
            <!--保存操作后的提示信息：成功或者失败-->
         
       
            <form action="addUserAction" method="" class="main_form">
            
                <div class="text_info clearfix"><span>用户名：</span></div>
                <div class="input_info">
                    <input type="text" class="width200" name="user.userName"/>
                    <span class="required">*</span>
                </div>   
                
               <div class="text_info clearfix"><span>密码：</span></div>
               <div class="input_info">
                    <input type="password" class="width200" name="user.password"/>
                    <span class="required">*</span>
               </div>
               
               <div class="text_info clearfix"><span>真实姓名：</span></div>
               <div class="input_info">
                    <input type="text" class="width200" name="user.username" />
                    <span class="required">*</span>
               </div>    
                
                <div class="text_info clearfix"><span>昵称：</span></div>
                <div class="input_info">
                    <input type="text" class="width200" name="user.uname" />
                    <span class="required">*</span>
                </div>  
                
                <div class="text_info clearfix"><span>录入日期：</span></div>
                <div class="input_info">
                    <input type="date" class="width200" name="user.udate" />
                    <span class="required">*</span>
                </div>  
                
                <div class="text_info clearfix"><span>手机号码：</span></div>
                <div class="input_info">
                    <input type="text" class="width200" name="user.phone" />
                    <span class="required">*</span>
                </div>
                
                <div class="text_info clearfix"><span>性别：</span></div>
                <div class="input_info">
                    <div >
						<input type="radio" name="user.gender" value="男">男
						<input type="radio" name="user.gender" value="女">女
                </div>
                </div>
                       
                <div class="text_info clearfix"><span>设置权限：</span></div>
                <div class="input_info_high">
                    <div >
  						<select name="user.userType">
  							<option value="管理员">管理员</option>
  							<option value="普通用户">普通用户</option>
  						</select>
                </div>
                    
                </div>
                <div class="button_info clearfix">
                    <input type="submit" value="保存" class="btn_save"  />
                    <input type="reset" value="重置" class="btn_save" />
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