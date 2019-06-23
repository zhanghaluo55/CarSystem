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
        <script type="text/javascript">
        	function checkForm(){
        		if(document.getElementById("txtRpt").value!=document.getElementById("txtPwd").value){
        			document.getElementById("tips_repeat").innerHTML="<em style='color:#FF0000'>两次输入的密码不一致</em>";
        			document.getElementById("txtRpt").focus();
        			return false;
        		}
        		else{
        			document.getElementById("tips_repeat").innerHTML = "OK!";
        		}
        	}
        
        </script>     
    </head>
    <body>
        <!--Logo区域开始-->
        <div id="header">
            <img src="images/logo2.png" alt="logo" class="left"/>
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
        <div id="main">       
            <form action="alterPassword" method="" class="main_form">
            	
                <div class="text_info clearfix"><span>旧密码：</span></div>
                <div class="input_info">
                    <input type="password" name="oldPassword" class="width200"/><span class="required">*</span>
                </div>
                
                <div class="text_info clearfix"><span>新密码：</span></div>
                <div class="input_info">
                    <input type="password" id="txtPwd" name="newPassword" class="width200" onChange="return checkForm()"/><span class="required">*</span>
                   
                </div>
                
                <div class="text_info clearfix"><span>重复新密码：</span></div>
                <div class="input_info">
                    <input type="password" class="width200"  name="repeatPassword" id="txtRpt" onChange="return checkForm()"/><span id="tips_repeat"class="required">*</span>
                    <div class="validate_msg_medium" ></div>
                </div>
                
                <div class="button_info clearfix">
                    <input type="submit" value="保存" class="btn_save" />
                    <input type="button" value="取消" class="btn_save" />
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