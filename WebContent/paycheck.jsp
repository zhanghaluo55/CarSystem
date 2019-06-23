<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/common.css" rel="stylesheet"  type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.1.8.2.js" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="js/cityselect.js" type="text/javascript"></script>
<script src="js/common_js.js" type="text/javascript"></script>
<script src="js/footer.js" type="text/javascript"></script>
<script src="js/jquery.searchableSelect.js"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<title>购车信息</title>
</head>

<body>
<!--顶部样式-->
<div id="header_top">
<div id="top">
  <div class="top">
    <div class="Collection"><em></em><a href="#">收藏我们</a></div>
	<div class="hd_top_manu clearfix">
	  <ul class="clearfix">
	   	  <s:if test="#session.user1==null">
	   <li class="hd_menu_tit zhuce" data-addclass="hd_menu_hover">欢迎光临本店！<a href="user_login.jsp" class="red">[请登录]</a> 新用户<a href="registered.jsp" class="red">[免费注册]</a></li>
	   </s:if>
	   <s:else>
	     <li class="hd_menu_tit zhuce" data-addclass="hd_menu_hover">欢迎光临本店！<a href="user_intro.jsp" class="red">${user1.username}</a> <a href="userAction!exitUser.action" class="red">退出登录</a> </li>
	   <li class="hd_menu_tit list_name" data-addclass="hd_menu_hover"><a href="orderAction!pagelist.action?page=1" class="hd_menu">我的订单</a>
	   </s:else>
	  
         <div class="hd_menu_list" style="display: none;">
		   <ul>
<!-- 		    <li><a href="询价订单.html">询价订单</a></li>
		    <li><a href="保险订单.html">保险订单</a></li> -->
            <li><a href="user_order.jsp">新车订单</a></li>
		   </ul>
		</div>
       </li> 
	  <!--  <li class="hd_menu_tit" data-addclass="hd_menu_hover"> <a href="保单查询.html">保单查询</a> </li> -->
	   <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="#">网址导航</a></li>
	   <li class="hd_menu_tit list_name" data-addclass="hd_menu_hover"><a href="#" class="hd_menu">帮助中心</a>
	    <div class="hd_menu_list" style="display: none;">
		   <ul>
		    <li><a href="#">常见问题</a></li>
		    <li><a href="#">在线投诉</a></li>
            <li><a href="#">支付方式</a></li>
            <li><a href="#">联系方式</a></li>
			<li><a href="#">配送服务</a></li>
		   </ul>
		</div>	   
	   </li>
        <li class="hd_menu_tit phone_c" data-addclass="hd_menu_hover"><a href="#" class="hd_menu "><i class="icon_phone"></i>手机版</a>
	    <div class="hd_menu_list erweima">
		   <ul>
            <img src="小组联系人微信号.png"  width="120px" height="120"/>
            <p>扫码关注公众号</p>
		   </ul>
		</div>	   
	   </li>
	  </ul>
	</div>
  </div>
</div>
<!--栏目-->
<div class="header relative clearfix">
  <div class="logo_style"><a href="index.jsp"><img height="100px" width="100px" src="images/logo.jpg"  /><h6 class="pingtai_name">一站式汽车综合服务平台</h6></a></div>
  <div class="middle_style">
   <div class="Search">
    <p><select name="" class="select_name"><option value="1">全部</option><option value="2">品牌</option><option value="3">销量</option><option value="4">车名</option><option value="5">价格</option></select><input name="搜索框" id="keyword" type="text" class="text" placeholder="请输入关键字"><input name="" onclick="submit_btn()" type="submit" value="搜索" class="Search_btn"></p>
    <p class="Words">热搜关键字：<a href="carAction!selectbyBrand.action?brand='长安'">长安汽车</a><a href="carAction!selectbyBrand.action?brand='宝马'">宝马</a><a href="brand.jsp">国产品牌</a><a href="carAction!selectbyBrand.action?brand='福特'">福特</a><a href="carAction!selectbyBrand.action?brand='本田'">本田</a><a href="carAction!orderbysb.action?sb=sales">热卖</a></p>
</div>
     <ul class="menu_list">
      <li><a href="index.jsp" class="menu_name">首页</a></li>
      <li><a href="carAction!pagelist.action?page=1" class="menu_name">购车 <em class="Arrows_icon"></em></a>
       <div class="Insurance_class">
       <div class="Condition_selection_style">
         <div class="Condition_selection clearfix">
         <div class="title_name">品牌</div>
         <div class="link_name clearfix">
          <a href="产品详细.html">大众</a><a href="#">长城</a><a href="#">一气</a><a href="#">东风</a><a href="#">奔驰</a><a href="#">宝马</a><a href="#">福特</a><a href="#">本田</a>
          <a href="#">丰田</a><a href="#">三菱</a><a href="#">现代</a><a href="#">众泰</a><a href="#">吉利</a><a href="#">奇瑞</a><a href="#">江淮汽车</a><a href="#">本田</a>
       </div>
         </div>
         <div class="Condition_selection clearfix">
         <div class="title_name">车型</div>
         <div class="link_name clearfix">
          <a href="#">两厢轿车</a><a href="#">三厢轿车</a><a href="#">SUV</a><a href="#">面包车</a><a href="#">皮卡</a><a href="#">微型车</a><a href="#">福特</a><a href="#">本田</a>
       </div>
       <div class="Condition_selection clearfix">
         <div class="title_name">价格</div>
         <div class="link_name clearfix">
          <a href="#">5万以下</a><a href="#">5-10万</a><a href="#">10-15万</a><a href="#">15-20万</a><a href="#">20-25万</a><a href="#">25-35万</a><a href="#">35-50万</a><a href="#">50万以上</a>
          </div>
         </div>
         </div>
         </div>
         <div class="Recommended_Brand">
          <div class="title_name">推荐品牌</div>
          <a href="#"><img src="images/logo/t01bf092c2732957cc2.jpg"  width="80px"/></a>
          <a href="#"><img src="images/logo/t01bf092c2732957cc2.jpg"  width="80px"/></a>
          <a href="#"><img src="images/logo/t01bf092c2732957cc2.jpg"  width="80px"/></a>
          <a href="#"><img src="images/logo/t01bf092c2732957cc2.jpg"  width="80px"/></a>
          <a href="#"><img src="images/logo/t01bf092c2732957cc2.jpg"  width="80px"/></a>
          <a href="#"><img src="images/logo/t01bf092c2732957cc2.jpg"  width="80px"/></a>
          <a href="#"><img src="images/logo/t01bf092c2732957cc2.jpg"  width="80px"/></a>
         </div>
       </div>      
      </li>
     <!--  <li><a href="#" class="menu_name">车险<em class="Arrows_icon"></em></a>
       <div class="Insurance_class">
        	<div class="Insurance_class_Insurance">
              <h3><a href="Insurance.html">太平洋保险</a></h3>
              <p class="jianjie ">又称太平洋保险，简称中国太保或太保，前身是中国太平洋保险公司，成立于1991年5月13日，是经中国人民银行批准设立的全国性股份制商业保险公司。中国太平洋保险以“做一家负责任的保险公司”为使命，以“诚信天下，稳健一生，追求卓越”为企业核心价值观，以“推动和实现可持续的价值增长”为经营理念，不断为客户、股东、员工、社会和利益相关者创造价值，为社会和谐做出贡献。</p>
              <ul class="clearfix  Auto_insurance">
               <li><a href="#">车辆损失险</a></li>
               <li><a href="#">全车盗抢险</a></li>
               <li><a href="#">司机座位责任险</a></li>
               <li><a href="#">车身划痕险</a></li>
               <li><a href="#">涉水损失险</a></li>
               <li><a href="#">车身划痕险</a></li>
              </ul>
            </div>
            <div class="Insurance_class_Insurance">
            <h3><a href="#">中国人民保险</a></h3>
            <p class="jianjie marginleft">中国人民财产保险股份有限公司，2003年07月07日成立，经营范围包括财产损失保险、责任保险、信用保险、意外伤害保险、短期健康保险、保证保险等人民币或外币保险业务等。以"四个一流"为标准，以四化建设为路径，以组织能力持续提升为驱动，加快转变发展方式，着力构建以价值增长为目标的发展模式，以成本管控为手段的盈利模式，</p>
             <ul class="clearfix  Auto_insurance">
               <li><a href="#">车辆损失险</a></li>
               <li><a href="#">全车盗抢险</a></li>
               <li><a href="#">司机座位责任险</a></li>
               <li><a href="#">车身划痕险</a></li>
               <li><a href="#">涉水损失险</a></li>
               <li><a href="#">车身划痕险</a></li>
              </ul>
            </div>
            <div class="Insurance_class_Insurance class_san">
            <h3><a href="#">平安保险</a></h3>
            <p class="jianjie marginleft">中国平安全称中国平安保险(集团)股份有限公司，是一家在香港交易所上市的金融公司。是于1988年诞生于深圳蛇口，是中国第一家股份制保险企业，至今已发展成为融保险、银行、投资等金融业务为一体的整合、紧密、多元的综合金融服务集团。</p>
             <ul class="clearfix  Auto_insurance">
               <li><a href="#">车辆损失险</a></li>
               <li><a href="#">全车盗抢险</a></li>
               <li><a href="#">司机座位责任险</a></li>
               <li><a href="#">车身划痕险</a></li>
               <li><a href="#">涉水损失险</a></li>
               <li><a href="#">车身划痕险</a></li>
              </ul>
            </div>
       </div>
      </li>      -->
      
      <li><a href="#" class="menu_name">知识</a></li>
      </ul>
      
   </div>
   <s:if test="#session.user1==null">
   	<div class="contacttop_style"><img src="images/phone.png" />
   		<h2 style="color: orange;font-style: oblique;">13556510364</h2>
    <div class="header_mycount">
     <a href="user_login.jsp" class="cart_style"><i class="icon_cart"></i>我的购物车<i class="ci-count">${acount}</i></a>
     <a href="user_login.jsp" class="user_header_style">
        <i class="icon_user"></i>我的汽车销售 
     </a>
    </div>
   </div>
   </s:if>
   <s:else>
   <div class="contacttop_style"><img src="images/phone.png" />
   	<h2 style="color: orange;font-style: oblique;">13556510364</h2>
    <div class="header_mycount">
     <a href="cart.jsp" class="cart_style"><i class="icon_cart"></i>我的购物车<i class="ci-count">${acount}</i></a>
     <a href="orderAction!pagelist.action" class="user_header_style">
        <i class="icon_user"></i>我的汽车销售 
     </a>
    </div>
   </div>
   </s:else>
</div>
</div>
<!---->
<div class="Insurance_content pages_style">
<div class="page clearfix"> 
 <div class="Buy_new_carstyle marginsx20">
  <div class="title_name">完善购车人信息</div>
  <div class="complete_material">
    <div class="cart_prompt">为保证购车的安全，凡购买汽车，必须提交购车人的身份证信息。提交购买成功后请保持电话畅通，我们的客服人员将在24小时以内联系你。(随意提交两张图片即可)</div>
   <div class="info_content clearfix">
    <span class="lable_name">购车人姓名：</span>
    <span class="edit_content"><input name="购车人姓名" data-name="购车人姓名" type="text"  class="add_text width150"/></span>
   </div>
    <div class="info_content clearfix">
    <span class="lable_name">身份证号：</span>
    <span class="edit_content"><input name="身份证号" data-name="身份证号" type="text"  class="add_text width250"/></span>
   </div>
    <div class="info_content clearfix">
    <span class="lable_name">选择上牌城市：</span>
    <span class="edit_content">   <input type="text" class="cityinput add_text width150" value="南京" id="citySelect" placeholder="请输入城市">
   </div>
     <div class="info_content clearfix">
    <span class="lable_name">身份证图片：</span>
    <span class="edit_content">
     <div class="clearfix">
    <a href="javascript:" class="upload_picture">
      <span></span>
      <div class="Document_picture"><img src="images/sfz-z.jpg"  width="100%" height="248"/></div>
     <span class="file_caozuo"><label for="unload" onmouseover="document.getElementById('upload').style.display='block';" class="btn file1_btn file1_brn">身份证正面</label>
     <input type="file" data-name="身份证正面" onchange="document.getElementById('viewfile').value=this.value;this.style.display='none';" class="file" id="upload"></span>
      </a>
      <a href="javascript:" class="upload_picture">
     <div class="Document_picture"><img src="images/sfz-f.jpg"  width="100%" height="248"/></div>
     <span class="file_caozuo"><label for="unload" onmouseover="document.getElementById('upload').style.display='block';" class="btn file1_btn file1_brn">身份证反面</label>
     <input type="file" data-name="身份证反面" onchange="document.getElementById('viewfile').value=this.value;this.style.display='none';" class="file" id="upload"></span>
      </a>
   </div>     
    </span>
   </div>
   <div class="Submit_purchase_style mb15">
    <a href="cart.jsp" class="btn btn_huise Submit_purchase_btn">返&nbsp;&nbsp回</a> 
   <a href="javascript:" class="btn Submit_purchase_btn btn_red" onclick="btn_Submit()">提&nbsp&nbsp交</a>     
   </div>
  </div>  
 </div>
</div>
</div>
<!--优势-->
<div class="Advantage_style">
 <div class="footerbox">
  <ul class="clearfix">
   <li class="clearfix ensure_name">
    <div class="left_icon"><img src="images/icon_img_17.png" /></div>
    <div class="right_content">
     <h3>全程购物安全保障</h3>
     <h4>用户消费，资金安全</h4>
    </div>
   </li>
    <li class="clearfix ensure_name">
    <div class="left_icon"><img src="images/icon_img_07.png" /></div>
    <div class="right_content">
     <h3>专业汽车销售平台</h3>
     <h4>实体汽车销售企业</h4>
    </div>
   </li>
    <li class="clearfix ensure_name">
    <div class="left_icon"><img src="images/icon_img_09.png" /></div>
    <div class="right_content">
     <h3>获得相关认证授权</h3>
     <h4>保险,汽车销售许可</h4>
    </div>
   </li>
    <li class="clearfix ensure_name">
    <div class="left_icon"><img src="images/icon_img_11.png" /></div>
    <div class="right_content">
     <h3>24小时服务热线</h3>
     <h4>有问题实时沟通联系</h4>
    </div>
   </li>
  </ul>
 </div>
</div>
<!--底部样式-->
<div class="footer">
 <div class="footerbox clearfix" >
  <div class="server_box clearfix">
   <dl>
    <dt>关于我们</dt>
    <dd><a href="#">网站介绍</a></dd>
    <dd><a href="#">汽车销售</a></dd>
    <dd><a href="#">官方微信</a></dd>
    <dd><a href="#">联系我们</a></dd>
    <dd><a href="#">名称</a></dd>
   </dl>
   <dl>
    <dt>服务承诺</dt>
    <dd><a href="#">免手续费</a></dd>
    <dd><a href="#">超长质保</a></dd>
    <dd><a href="#">协助服务</a></dd>

   </dl><dl>
    <dt>支付方式</dt>
    <dd><a href="#">支付宝</a></dd>
    <dd><a href="#">微信支付</a></dd>
    <dd><a href="#">银联支付</a></dd>
    <dd><a href="#">支付步骤</a></dd>
   </dl>
  </div>
  <div class="weixin_style">
   <div class="sys_style"><img src="小组联系人微信号.png"  width="100px"/><h5>小组联系微信</h5></div>
  </div> 
  <div class="footer_phone"><img src="images/phone.png" /></div> 
  	<h2 style="color: orange;font-style: oblique;">13556510364</h2>
 </div>
 <div class="Copyright">
 <div class="footerbox">
 保险业务经营许可证：2609570xxxx0800 xxxxxxxxxx有限公司：440301105759096 粤ICP备1xxxxxxxx号<br /> Copyright ©2006-2017 汽车销售汽车服务平台版权所有
 </div> 
 </div>
</div> 
<script>
var test=new Vcity.CitySelector({input:'citySelect'});
 function btn_Submit(){
	    var num=0;
		 var str="";
     $(".complete_material input[type$='text'],.file").each(function(n){
          if($(this).val()=="")
          {
               
			   layer.alert(str+=""+$(this).attr("data-name")+"不能为空！\r\n",{
                title: '提示框',				
				icon:0,								
          }); 
		    num++;
            return false;            
          } 
		 });
		  if(num>0){  return false;}	 	
          else{
			   location.href="user_pay.jsp";
			   layer.close(index);	
		  }	
	
	 
}
/*********搜索*********/
function submit_btn(){
	 $(".Search input[type$='text']").each(function(n){
		  if($(this).val()=="")
          {
               
			   layer.alert("搜索框不能为空！",{
                title: '提示框',				
				icon:0,								
          }); 		    
            return false;            
          } 
		 else{
			 location.href="carAction!search.action?page=1&keyword="+$(this).val();
			 
			 }
		 })		
}
</script>
</body>
</html>
