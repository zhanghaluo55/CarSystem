<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path=request.getContextPath();
	String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<%
	
		request.setCharacterEncoding("utf-8");	
		response.setHeader("refresh","2;URL="+basePath+request.getSession().getAttribute("url"));
	%>
	${msg},两秒后自动跳转页面<br/> 如果没有跳转成功,请点<a href="${sessionScope.url}">这里 </a>
</center>
</body>
</html>