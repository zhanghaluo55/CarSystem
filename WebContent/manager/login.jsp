<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="author" content="order by dede58.com"/>
    <title>系统登录 - 汽车信息管理系统</title>
    <link rel="stylesheet" href="../css/style2.css"/>
</head>
<body class="login_bg">
    	<%
		String errorInfo = (String)request.getAttribute("loginError"); 
	if(errorInfo != null) {
	%>
	<script type="text/javascript" language="javascript">
	alert("<%=errorInfo%>");
	 
	</script>
	<%} %>
    <section class="loginBox">
        <header class="loginHeader">
            <h1>汽车信息管理系统</h1>
        </header>
        <section class="loginCont">
            <form class="loginForm" action="managerLoginAction">
                <div class="inputbox">
                    <label for="user">用户名：</label>
                    <input id="user" type="text" name="username" placeholder="请输入用户名" required/>
                </div>
                <div class="inputbox">
                    <label for="mima">密码：</label>
                    <input id="mima" type="password" name="password" placeholder="请输入密码" required/>
                </div>
                <div class="subBtn">
                    <input type="submit" value="登录" />
                    <input type="reset" value="重置"/>
                </div>

            </form>
        </section>
    </section>

</body>
</html>