<%@page import="com.zsg.bean.Car"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="author" content="order by dede58.com"/>
        <title>汽车列表</title>
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global_color.css" /> 
        
        <script src="jquery-1.9.1.min.js"></script>  
        <script src="jquery.colorbox-min.js"></script>
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
            <form action="carOperation" method="post">
                <!--查询-->
                    <div class="search_add">
                    <div>
                        查找类型：
                        <select id="selModules" class="select_search" name="type">
                            <option value="cname">车名</option>
                            <option value="carype">车型</option>
                            <option value="price">价格</option>
                        </select>
                    </div>
                    <div>关键字：<input type="text" value="" name="keyword" size="12" style="width:100px;height:25px;"/></div>
                    <div>价格区间(以万为单位)：<input type="text" name="price1" size="4" style="width:50px;height:25px;"/></div>
                    <div>~<input type="text" name="price2" size="4" style="width:50px;height:25px;"/></div>
                    <div><input type="submit" value="搜索" class="btn_search"/></div>
                <!--      <input type="button" value="批量删除" class="btn_add"> -->
                    <input type="button" value="增加" class="btn_add" onclick="location.href='car_add.jsp';" />
                </div>
                <!--删除等的操作提示-->
                <div id="operate_result_info" class="operate_success">
                    <img src="images/close.png" onclick="this.parentNode.style.display='none';" />
                    删除成功，且已删除其下属的业务账号！
                </div>   
                <!--数据区域：用表格展示数据-->     
                <div id="data">            
                    <table id="datalist">
                    <tr>
                    	
                        <th style="width: 50px;">汽车ID</th>
                        <th style="width: 200px;">车型名称</th>
                        <th class="width100" style="width: 80px;">车图</th>
                        <th style="width: 50px;">车型</th>
                        <th style="width: 50px;">价格</th>
                        <th  style="width: 45px;">销量</th>
                        <th  style="width: 45px;">库存</th>                                                        
                        <th class="width200"></th>
                    </tr>
 					<%
					request.setCharacterEncoding("UTF-8");
					List<Car> cars=(List<Car>)request.getAttribute("Car");
						if(cars!=null)
							for(Car car:cars){
								System.out.println(car.getCname()+","+car.getPicturePath());
					%>
					<tr>
						<td><a href="carDetail?cid=<%=car.getCid()%> "><%=car.getCid() %></a></td>
                        <td><%=car.getCname() %></td>
                       	<%
                       		if(car.getPicturePath()!=null){
                       	%>
                     	<td><a href="../carImage/<%=car.getPicturePath()%>1.jpg"><img src="../carImage/<%=car.getPicturePath()%>1.jpg"  width="100%" height="100%" style="width: 100px;height: 80px;"/></a></td>  
                        <% }%>
                        <%if(car.getPicturePath()==null){ %><td><a href="addCarPicture?cid=<%=car.getCid()%>">添加图片</a></td>
                       <%} %>
                        <td><%=car.getCartype() %></td>
                        <td><%=car.getPrice() %></td>
                        <td><%=car.getSales() %></td>
                        <td><%=car.getQuantity() %></td>                              
                        <td class="td_modi">
                            <!-- <input type="button" value="暂停" class="btn_pause"  /> -->
                            <input type="button" value="修改" class="btn_modify" onclick="location.href='carDetail?cid=<%=car.getCid()%>';" />
                            <input type="button" value="删除" class="btn_delete" onClick="location.href='deleteCarAction?cid=<%=car.getCid()%>'" />
                        </td>
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