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
<Link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.1.8.2.js" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="js/common_js.js" type="text/javascript"></script>
<script src="js/footer.js" type="text/javascript"></script>
<script src="js/jqzoom.js" type="text/javascript"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<title>产品详细</title>
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
	     <li class="hd_menu_tit zhuce" data-addclass="hd_menu_hover">欢迎光临本店！<a href="user_intro.jsp" class="red">${user1.username}</a>  <a href="userAction!exitUser.action" class="red">退出登录</a></li>
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
		    <li><a href="#">知识问答</a></li>
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
  <div class="logo_style"><a href="index.jsp"><img height="100px" width="100px" src="images/logo.jpg" /><h6 class="pingtai_name">一站式汽车综合服务平台</h6></a></div>
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
       <div class="navcar clearfix">
       <div class="label_name">车型：</div>
        <ul>
            <li class="navcar01"><a target="_blank" href="carAction!selectbyCartype.action?cartype='微型车'" data-tjposition="4|1">微型车</a></li>
            <li class="navcar02"><a target="_blank" href="carAction!selectbyCartype.action?cartype='小型车'" data-tjposition="4|2">小型车</a></li>
            <li class="navcar03"><a target="_blank" href="carAction!selectbyCartype.action?cartype='紧凑型车'" data-tjposition="4|3">紧凑型车</a></li>
            <li class="navcar04"><a target="_blank" href="carAction!selectbyCartype.action?cartype='中型车'" data-tjposition="4|4">中型车</a></li>
            <li class="navcar05"><a target="_blank" href="carAction!selectbyCartype.action?cartype='中大型车'" data-tjposition="4|5">中大型车</a></li>
            <li class="navcar06"><a target="_blank" href="carAction!selectbyCartype.action?cartype='大型车'" data-tjposition="4|6">大型车</a></li>
            <li class="navcar07" id="auto-header-suv"><a target="_blank" href="carAction!selectbyCartype.action?cartype='SUV'">SUV</a> </li>
            <li class="navcar08"><a target="_blank" href="carAction!selectbyCartype.action?cartype='MPV'" data-tjposition="4|8">MPV</a></li>
            <li class="navcar09"><a target="_blank" href="carAction!selectbyCartype.action?cartype='跑车'" data-tjposition="4|9">跑车</a></li>
            <li class="navcar10"><a target="_blank" href="carAction!selectbyCartype.action?cartype='皮卡'" data-tjposition="4|10">皮卡</a></li>
            <li class="navcar11"><a target="_blank" href="carAction!selectbyCartype.action?cartype='微面'" data-tjposition="4|11">微面</a></li>
            <li class="navcar12"><a target="_blank" href="carAction!selectbyCartype.action?cartype='电动车'" data-tjposition="4|12">电动车</a></li>
        </ul>
       </div> 
        <div class="navcar clearfix">
         <div class="label_name">价格：</div>
         <ul>
            <li class="Car_prices"><a target="_blank" href="carAction!selectbyPrice.action?min=0&max=5" data-tjposition="">0-5万</a></li>
            <li class="Car_prices"><a target="_blank" href="carAction!selectbyPrice.action?min=5&max=10" data-tjposition="">5万-10万</a></li>
            <li class="Car_prices"><a target="_blank" href="carAction!selectbyPrice.action?min=10&max=15" data-tjposition="">10万-15万</a></li>
            <li class="Car_prices"><a target="_blank" href="carAction!selectbyPrice.action?min=15&max=20" data-tjposition="">15万-20万</a></li>
            <li class="Car_prices"><a target="_blank" href="carAction!selectbyPrice.action?min=20&max=25" data-tjposition="">20万-25万</a></li>
            <li class="Car_prices"><a target="_blank" href="carAction!selectbyPrice.action?min=25&max=50" data-tjposition="">25万-50万</a></li>
            <li class="Car_prices"><a target="_blank" href="carAction!selectbyPrice.action?min=50&max=99999">50万以上</a> </li>
        </ul>
       </div>
              <div class="Main_models">
        <div class="title_name">主打车</div>
        <ul>
         <li>
         <a href="carAction!carIntro.action?car.cid=2">
          <img src="carImage/长安CS551.jpg"  width="80px" height="70px"/>
          <h4>长安CS55</h4>
         </a>
         </li>
          <li>
         <a href="carAction!carIntro.action?car.cid=13">
          <img src="carImage/奥迪A11.jpg"  width="80px" height="70px"/>
          <h4>奥迪A1</h4>
         </a>
         </li>
          <li>
         <a href="carAction!carIntro.action?car.cid=14">
          <img src="carImage/本田飞度1.jpg"  width="80px" height="70px"/>
          <h4>本田飞度</h4>
         </a>
         </li>
          <li>
         <a href="carAction!carIntro.action?car.cid=12">
          <img src="carImage/宝马M51.jpg"  width="80px" height="70px"/>
          <h4>宝马M5</h4>
         </a>
         </li>
          <li>
         <a href="carAction!carIntro.action?car.cid=7">
          <img src="carImage/长安逸动1.jpg"  width="80px" height="70px"/>
          <h4>长安逸动</h4>
         </a>
         </li>
          <li>
         <a href="carAction!carIntro.action?car.cid=8">
          <img src="carImage/奇瑞E51.jpg"  width="80px" height="70px"/>
          <h4>奇瑞E5</h4>
         </a>
         </li>
          <li>
         <a href="carAction!carIntro.action?car.cid=11">
          <img src="carImage/奔驰C级1.jpg"  width="80px" height="70px"/>
          <h4>奔驰C级</h4>
         </a>
         </li>
          <li>
         <a href="carAction!carIntro.action?car.cid=10">
          <img src="carImage/本田杰德1.jpg"  width="80px" height="70px"/>
          <h4>本田杰德</h4>
         </a>
         </li>
        </ul>
       </div>
       </div>
       <div class="Recommended_Brand">
       <a href="#" class="mb15"><img src="images/ad_1.jpg"  width="100%" height="198px"/></a>
        <a href="#"><img src="images/ad_1.jpg"  width="100%" height="198px"/></a>
       </div>
       </div>   
      </li>
      <%-- <li><a href="#" class="menu_name">车险<em class="Arrows_icon"></em></a>
       <div class="Insurance_class">
        	<div class="Insurance_class_Insurance">
              <h3><a href="Insurance.html">太平洋保险</a></h3>
              <p class="jianjie ">又称太平洋保险，简称中国太保或太保，前身是中国太平洋保险公司，成立于1991年5月13日，是经中国人民银行批准设立的全国性股份制商业保险公司。中国太平洋保险以“做一家负责任的保险公司”为使命，以“诚信天下，稳健一生，追求卓越”为企业核心价值观，以“推动和实现可持续的价值增长”为经营理念，不断为客户、股东、员工、社会和利益相关者创造价值，为社会和谐做出贡献。</p>
             <div class="clauseBlock">
            <img src="images/map01.jpg" width="100%" alt="">
            <ul class="clauseItemList">
            	<li>? 先赔付，再修车</li>
                <li>? 万元以下赔付，3天到账</li>
                <li>? 结案支付，60秒到账</li>
            </ul>
        </div>
        <div class="clauseBlock">
            <img src="images/map02.jpg" width="100%" alt="">
            <ul class="clauseItemList">
            	<li>? 7X24小时</li>
                <li>? 百公里免费非事故</li>
                <li>? 道路救援服务</li>
            </ul>
        </div>
        <div class="clauseBlock">
            <img src="images/map03.jpg" width="100%" alt="">
            <ul class="clauseItemList">
            	<li>? 人伤案件安心理赔</li>
                <li>? 上门代收理赔资料</li>
                <li>? VIP客户一站式理赔</li>
                <li>? 理赔进度微信实时查询</li>
            </ul>
        </div>
            </div>
            <div class="Insurance_class_Insurance class_san">
            <h3><a href="#">中国人民保险</a></h3>
            <p class="jianjie marginleft">中国人民财产保险股份有限公司，2003年07月07日成立，经营范围包括财产损失保险、责任保险、信用保险、意外伤害保险、短期健康保险、保证保险等人民币或外币保险业务等。以"四个一流"为标准，以四化建设为路径，以组织能力持续提升为驱动，加快转变发展方式，着力构建以价值增长为目标的发展模式，以成本管控为手段的盈利模式，</p>
          <div class="w740 clearfix">
                            <div class="rocket png">
                                <p class="simple">简单的"<span class="speed">极速</span>"理赔</p>
                                <ul class="posRelative">
                                    <li class="hasListIco">先赔付、后修车的“极速”服务</li>
                                    <li class="hasListIco">免填单证、免事故说明的“双免”服务</li>
                                    <li class="hasListIco">万元以下案件一小时通知赔付</li>
                                </ul>
                            </div>
                            <div class="umbull png">
                                <p class="simple">人伤无忧理赔更"<span class="speed">安心</span>"</p>
                                <ul class="posRelative">
                                    <li class="hasListIco">专员现场调解</li>
                                    <li class="hasListIco">当场通知赔付</li>
                                    <li class="hasListIco">一次性快速处理</li>
                                </ul>
                            </div>                          
                        </div>
                        <div class="head_right_content">
                                <div class="protection_1 png">
                                    <p class="expl_protection">车载货物掉落造成的三者损失</p>
                                    <p class="bus_protection">商业三者险保障</p>
                                </div>
                                <div class="protection_2 png">
                                    <p class="expl_protection">倒车镜单独损坏、灯具单独损坏</p>
                                    <p class="bus_protection">车损险保障</p>
                                </div>

                            </div>
            </div>
           
       </div>
      </li>      --%>
      
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
<!--汽车详细介绍-->
<div class="pages_style">
<div class="page clearfix"> 
 <!--面包屑-->
 <div class="Location_link"><em></em><a href="index.jsp">首页</a>  &lt;   <a href="car_list.jsp">汽车</a>   &lt;   <a href="carAction!selectbyBrand.action?brand='${session.car.brand}'">${session.car.brand}</a>  </div>
   <div class="marginsx20">
     <div class="cars_detailed" id="goodsInfo">
      <div class="left_cars_img mod_picfold ">
            <div class="clearfix" id="detail_main_img">
	 <div class="layout_wrap preview">
     <div id="vertical" class="bigImg">
		<img src="carImage/${session.car.picturePath}1.jpg" width="" height="" alt="" id="midimg" />
		<div id="winSelector"></div>
	</div>
     <div class="smallImg">
		<div class="scrollbutton smallImgUp disabled">&lt;</div>
		<div id="imageMenu">
			<ul>
				<li><img src="carImage/${session.car.picturePath}1.jpg" width="68" height="68" alt="汽车"/></li>
				<li><img src="carImage/${session.car.picturePath}2.jpg" width="68" height="68" alt="汽车"/></li>
				<li><img src="carImage/${session.car.picturePath}3.jpg" width="68" height="68" alt="汽车"/></li>
				<li><img src="carImage/${session.car.picturePath}4.jpg" width="68" height="68" alt="汽车"/></li>
				<li><img src="carImage/${session.car.picturePath}5.jpg" width="68" height="68" alt="汽车"/></li>
			</ul>
		</div>
		<div class="scrollbutton smallImgDown">&gt;</div>
	</div>
	<div id="bigView" style="display:none;"><div><img width="800" height="800" alt="" src="" /></div></div>
	 </div>
	</div>
      </div>
      <!--右侧内容-->
      <div class="right_cars_content">
        <div class="Product_title">
         <h2>${session.car.cname}</h2>
         <h5>${session.car.title}</h5>
        </div>
        <div class="cars_price">
         <dl>
         <dt>一口价：</dt>
         <dd><em>￥</em><b>${session.car.price}</b><em>万</em></dd>
         </dl>
         <div class="inventory"><p>库存</p><b>${session.car.quantity}</b></div>
        </div>
        <!--基本参数-->
        <div class="clearfix margin productDL">
         <dl><dt>指导价:</dt><dd>￥<fmt:formatNumber type="number" value="${session.car.price+2}" pattern="0.00" maxFractionDigits="2" />万</dd></dl>
         <dl><dt>配送方式:</dt><dd>自提</dd></dl>
         <dl id="car_color"><dt>车身颜色:</dt><dd>
           <div id="carcolor" class="item  selected"><b></b><a href="javascript:" title="红色" class="">红色</a></div> 
           <div id="carcolor" class="item"><b></b><a href="javascript:" title="白色" class="">白色</a></div>
           <div id="carcolor" class="item"><b></b><a href="javascript:" title="蓝色" class="">蓝色</a></div>
           <div id="carcolor" class="item"><b></b><a href="javascript:" title="灰色" class="">灰色</a></div>
          </dd></dl>
         <dl><dt>选择内饰:</dt><dd> <div class="item  selected"><b></b><a href="javascript:" title="红色" class="">红色</a></div> 
           <div id="incarcolor" class="item"><b></b><a href="javascript:" title="白色" class="">白色</a></div>
           <div id="incarcolor" class="item"><b></b><a href="javascript:" title="蓝色" class="">蓝色</a></div>
           <div id="incarcolor" class="item"><b></b><a href="javascript:" title="灰色" class="">灰色</a></div></dd></dl>
        </div>
        <script type="text/javascript">
        	$("#carcolor").each(function(){	
        		$("#carcolor a").click(function(){	 	
					$(this).parents("div").removeClass("item");
            		$(this).parents("div").addClass("item  selected").siblings().removeClass("item  selected").addClass('item');;	
        			});

        		})
        	$("#incarcolor").each(function(){	
        		$("#incarcolor a").click(function(){	 	
					$(this).parents("div").removeClass("item");
            		$(this).parents("div").addClass("item  selected").siblings().removeClass("item  selected").addClass('item');;	
        			});

        		})
        </script>
        <!---->
        <div class="btn_operating">
        <!--<div class="choose-amount left">
			 <a class="btn-reduce" href="javascript:;" onclick="setAmount.reduce('#buy-num')">-</a>
			<a class="btn-add" href="javascript:;" onclick="setAmount.add('#buy-num')">+</a>
			<input class="text" id="buy-num" value="1" onkeyup="setAmount.modify('#buy-num');">		
		 </div> -->
          <s:if test="#session.user1==null">
          <a class="btn btn-buy2 btn-red" id="detailBuyButton" href="user_login.jsp"  target="_self">立即抢购</a>
          <a class="btn btn-buy2 btn-red" id="detailBuyButton" href="user_login.jsp"  target="_self">加入购物车</a>
          </s:if>
          <s:else>
          <a class="btn btn-buy2 btn-red" id="detailBuyButton" href="javascript:void(0)" onclick="detailBuyButton()" target="_self">立即抢购</a>
          <a class="btn btn-buy2 btn-red" id="detailBuyButton" href="goodsAction!addCart.action?id=${session.car.cid}" onclick="shopping_cart_btn()" target="_self">加入购物车</a>
          </s:else>
        </div>
        <div class="Guarantee clearfix">
	   <dl><dt>支付方式</dt><dd><em></em>在线支付</dd><dd><em></em>安全保障</dd> 
	   <dd> <div class="payment" id="payment"> 
       <a href="javascript:void(0);" class="paybtn">支持付款<span class="iconDetail"></span></a><ul><li>货到付款</li><li>支付宝</li><li>微信支付</li><li>银行转账</li></ul>
       </div>
	  </dd>
      </dl>
     </div>
      </div>
     </div> 
     <!--内容-->
     <div class="clearfix marginsx20">
      <div class="left_filter">
      <!--电话咨询-->
      <div id="detailService" class="detail-service-inner">
          <div class="detail-service-item">
              <p class="detail-service-title">任何购车问题请拨打</p>
              <p class="detail-service-call">13556510364</p>
              <p class="detail-service-date">周一至周日9:00-21:00 （仅收市话费）</p>
          </div>
          <!-- IM客服 -->
          <div class="detail-service-btn" style="" id="imBtn">
            <a id="contactImLink2" href="javascript:;" onclick="showIMDialog()" target="_self" class="btn btn-blue btn-blue-person"><i class="icon icon-service"></i>在线客服</a>
          </div>
      </div>
      <!--品牌-->
       <div class="car_Brand_style">
       <div class="title_name">销售品牌</div>
        <div class="logo_Brand"><img src="carImage/商标/${session.car.brand}.jpg"  width="120px" height="100px"/></div>
        <div class="xs_species"></div>
       </div>
       <!--其他汽车-->
       <div class="other_cars">
         <div class="title_name">同品牌汽车</div>
         <ul>
     <s:iterator value="#request.session.brandcarL" var="cl">    
     <li class="gl-item Brand_car_list">
	 <div class="Borders">
	 <div class="img"><a href="carAction!carIntro.action?car.cid=${cl.cid}"><img src="carImage/${cl.picturePath}1.jpg" style="width:220px;height:165px"></a></div>
	 <div class="Price"><em>￥</em><b>${cl.price}万</b><span><fmt:formatNumber type="number" value="${cl.price+2}" pattern="0.00" maxFractionDigits="2" />万</span>万</span></div>
	 <div class="name"><a href="carAction!carIntro.action?car.cid=${cl.cid}" title="">${cl.title}</a></div>
     <div class="carbox-tip" title="">${cl.cname }</div>
	 <div class="Review">已有<a href="#">${cl.sales}</a>购买记录</div>	
	 </div>
	 </li>
	 </s:iterator>
    <%-- <li class="gl-item Brand_car_list">
	<div class="Borders">
	 <div class="img"><a href="#"><img src="images/products/4.jpg" style="width:220px;height:165px"></a></div>
	 <div class="Price"><em>￥</em><b>万</b><span>万</span></div>
	 <div class="name"><a href="#" title=""></a></div>
     <div class="carbox-tip" title=""></div>
	 <div class="Review">已有<a href="#"></a>购买记录</div>	
	 </div>
	</li>
       <li class="gl-item Brand_car_list">
	<div class="Borders">
	 <div class="img"><a href="#"><img src="images/products/5.jpg" style="width:220px;height:165px"></a></div>
	 <div class="Price"><em>￥</em><b>万</b><span>万</span></div>
	 <div class="name"><a href="#" title=""></a></div>
     <div class="carbox-tip" title=""></div>
	 <div class="Review">已有<a href="#"></a>购买记录</div>	
	 </div>
	</li> 
       <li class="gl-item Brand_car_list">
	<div class="Borders">
	 <div class="img"><a href="#"><img src="images/products/6.jpg" style="width:220px;height:165px"></a></div>
	 <div class="Price"><em>￥</em><b>万</b><span>万</span></div>
	 <div class="name"><a href="#" title=""></a></div>
     <div class="carbox-tip" title="">车商城自营现车，可提供3年或10万公里整车质保，4S店支持维修保养，订金：4999元。</div>
	 <div class="Review">已有<a href="#"></a>购买记录</div>	
	 </div>
	</li>--%>
         </ul>
       </div>
      </div>
      <div class="right_cars_list">
      <div class="slidecarBox">
       <div class="inDetail_boxOut ">
	 <div class="inDetail_box">
	  <div class="fixed_out hd">
	   <ul class="inLeft_btn fixed_bar">
                  <li class="on">产品介绍</li>
                  <li>参数配置</li>
                 <!-- <li>售后服务</li>-->
                  <li>买家评论()</li>
                </ul>
               <div class="subbuy">
          <span class="extra currentPrice"> ¥万</span>
          <a onclick="detailBuyButton()" class="extra  notice J_BuyButtonSub">立即购买</a></div>
	  </div>
	 </div>	  
	</div>
    <div class="info_style bd">
     <ul><p><img src="images/11121.jpg" /></p></ul>
     <ul>
       <table width="100%" border="0" cellspacing="0" cellpadding="0" class="parameter_style">
    <tbody>
        <tr><th colspan="2">基础参数</th></tr>
        <tr>
            <td class="lable_name">车型名称</td>
            <td>${session.car.cname}</td>
        </tr>
        <tr>
            <td  class="lable_names">厂商指导价(元)</td>
            <td>${session.car.price}</td>
        </tr>
        <tr>
            <td  class="lable_name">厂商</td>
            <td >${session.car.factory}</td>
        </tr>
         <tr>
            <td  class="lable_names">级别</td>
            <td >${session.car.cartype}</td>
        </tr>
         <tr>
            <td class="lable_name">发动机</td>
            <td >2.3T 314马力 L4</td>
        </tr>
        <tr>
            <td  class="lable_names">长*宽*高(mm)</td>
            <td >4562*1793*1468</td>
        </tr>
        <tr>
            <td class="lable_name">轴距(mm)</td>
            <td>2614</td>
        </tr>
        <tr>
            <td  class="lable_names">行李箱容积(L)</td>
            <td>490</td>
        </tr>
        <tr>
            <td class="lable_name">整备质量(Kg)</td>
            <td>1310</td>
        </tr>
<!--         <tr>
            <td class="lable_names">转向助力系统</td>
            <td ></td>
        </tr>
        <tr>
            <td class="lable_name">加速时间0—100km/h(Km/h)</td>
            <td>200</td>
        </tr> -->
        <tr>
            <td class="lable_names">最高车速(s)</td>
            <td>9.6</td>
        </tr>
        <tr>
            <td class="lable_name">平均油耗(L/100km)</td>
            <td>6.7</td>
        </tr>
        <tr>
            <td class="lable_names">整车质保</td>
            <td>三年或10万公里</td>
        </tr>
        <tr>
<!--             <th colspan="2">发动机参数</th>
        </tr>
        <tr>
            <td class="lable_name">发动机排量（cc）</td>
            <td  >1.4</td>
        </tr>
        <tr>
            <td class="lable_names">发动机型式</td>
            <td>涡轮增压</td>
        </tr>
        <tr>
            <td  class="lable_name">额定功率(kw/rpm)</td>
            <td >96</td>
        </tr>
        <tr>
            <td class="lable_names">最大扭矩(N.m/rpm)</td>
            <td>225</td>
        </tr>
        <tr>
            <td class="lable_name">变速箱型式</td>
            <td >双离合变速箱(DCT)</td>
        </tr>
        <tr>
            <th colspan="2">发动机参数</th>
        </tr>
        <tr>
            <td class="lable_names">主/副驾驶座安全气囊</td>
            <td>●/●</td>
        </tr>
        <tr>
            <td class="lable_name">前/后排侧气囊</td>
            <td>●/—</td>
        </tr>
        <tr>
            <td class="lable_names">车内中控锁</td>
            <td>●</td>
        </tr>
        <tr>
            <td class="lable_name">儿童安全座椅接口</td>
            <td>●</td>
        </tr>
        <tr>
            <th colspan="2">外部配置</th>
        </tr>
        <tr>
            <td class="lable_name">氙气大灯</td>
            <td>○</td>
        </tr>
        <tr>
            <td class="lable_names">前雾灯</td>
            <td>●</td>
        </tr>
        <tr>
            <td class="lable_name">电动天窗</td>
            <td>●</td>
        </tr>
        <tr>
            <td class="lable_names">全景天窗</td>
            <td>—</td>
        </tr>
        <tr>
            <td class="lable_name">前/后电动车窗</td>
            <td>●/●</td>
        </tr>
        <tr>
            <td class="lable_names">后视镜电动调节</td>
            <td>●</td>
        </tr>
        <tr>
            <td class="lable_name">后视镜电动折叠</td>
            <td>●</td>
        </tr>
        <tr>
            <td class="lable_names">遮阳板化妆镜</td>
            <td>●</td>
        </tr>
        <tr>
            <td class="lable_name">铝合金轮毂</td>
            <td>●</td>
        </tr>
        <tr>
            <th colspan="2">内部配置</th>
        </tr>
        <tr>
            <td class="lable_name">真皮方向盘</td>
            <td>●</td>
        </tr>
        <tr>
            <td class="lable_names">方向盘调节</td>
            <td>—</td>
        </tr>
        <tr>
            <td class="lable_name">多功能方向盘</td>
            <td>●</td>
        </tr>
        <tr>
            <td class="lable_names">定速巡航</td>
            <td>●</td>
        </tr>
        <tr>
            <td class="lable_name">前/后驻车雷达</td>
            <td>●</td>
        </tr>
        <tr>
            <td class="lable_names">倒车视频影像</td>
            <td>○</td>
        </tr>
        <tr>
            <td class="lable_name">真皮/仿皮座椅</td>
            <td>●</td>
        </tr>
        <tr>
            <td class="lable_names">GPS导航系统</td>
            <td>○</td>
        </tr>
        <tr>
            <td class="lable_name">自动空调</td>
            <td>●</td>
        </tr>
        <tr>
            <th colspan="2">多媒体配置</th>
        </tr>
        <tr>
            <td class="lable_names">CD支持MP3/WMA</td>
            <td>●</td>
        </tr>
        <tr>
            <td class="lable_name">多媒体系统</td>
            <td>—</td>
        </tr>
        <tr>
            <td class="lable_names">扬声器数量</td>
            <td>6-7喇叭扬声器系统</td>
        </tr>
        <tr>
            <td colspan="2"></td>
        </tr>
        <tr>
            <td class="lable_name">● 标准配置 ○选配 — 不提供</td>
            <td align="right">
                <a target="_blank" class="moreModelInfo" href=""></a>
            </td>
        </tr> -->
    </tbody>
</table>
     </ul>
       <!--<ul></ul>-->     <!--产品评论-->
     <ul>
       <div class="productContent" id="status2">
      <div class="iComment clearfix">
        <div class="rate"><strong id="goodRate">100<span>%</span></strong><br>
          <span>好评度</span></div>
        <div class="percent" id="percentRate">
          <dl>
            <dt>好评<span>(100%)</span></dt>
            <dd>
              <div style="width:100px;"></div>
            </dd>
          </dl>
          <dl>
            <dt>中评<span>(0%)</span></dt>
            <dd class="d1">
              <div style="width:0;"> </div>
            </dd>
          </dl>
          <dl>
            <dt>差评<span>(0%)</span></dt>
            <dd class="d1">
              <div style="width:0;"> </div>
            </dd>
          </dl>
        </div>
        <div class="actor">
          <dl>
            <dt>发表评价即可获得10积分，精华评论更有 <font color="red">额外奖励</font> 积分；<br>
              还有7个多倍积分名额哦，赶紧抢占吧！<br>
              只有购买过该商品的用户才能进行评价。</dt>
            <dd>
              <input type="submit" class="Publication_btn" title="" onclick="send_cooment()" value="发表评论">
            </dd>
          </dl>
        </div>
      </div>
	  <div class="commentBox" >
		<form action="javascript:;" onsubmit="submitComment(this)" method="post" name="commentForm" id="commentForm">
		  <h3>商品评分</h3>
		  <div id="star">
			<ul>
			  <li><span onclick="dorank(1)"></span>
				<p>1分</p>
				<p>非常不满意</p>
			  </li>
			  <li><span onclick="dorank(2)"></span>
				<p>2分</p>
				<p>不满意</p>
			  </li>
			  <li><span onclick="dorank(3)"></span>
				<p>3分</p>
				<p>一般</p>
			  </li>
			  <li><span onclick="dorank(4)"></span>
				<p>4分</p>
				<p>满意</p>
			  </li>
			  <li><span onclick="dorank(5)"></span>
				<p>5分</p>
				<p>非常满意</p>
			  </li>
			</ul>
			<input type="hidden" name="rank" id="rank" value="1">
			<input type="hidden" name="cmt_type" value="">
			<input type="hidden" name="id" value="78">
			<input type="hidden" name="email" id="email" value="null@mial.com">
		  </div>
		  <h4>评论内容</h4>
		  <div class="bd">
			<textarea name="content" id="content" class="textarea_long" onkeyup="checkLength(this);"></textarea>
			<p class="g">
			  <label>&nbsp; </label>
			  <input type="submit" value="发表" class="btn btn_common">
			  <span t="word_calc" class="word"><b id="sy">0</b>/1000</span> </p>
		  </div>
		</form>
		</div>
		<div id="ECS_COMMENT"> <div class="Comment">
<div class="CommentTab">
  <ul>
	<li class="active" onclick="javascript:gotoPage(1,78,0,0);">全部评论(0)</li>
	<li onclick="javascript:gotoPage(1,78,0,3);">好评(0)</li>
	<li onclick="javascript:gotoPage(1,78,0,2);">中评(0)</li>
	<li onclick="javascript:gotoPage(1,78,0,1);">差评(0)</li>
  </ul>
</div>
<div class="CommentText" id="goodsdetail_comments_list" style="display:block">
  <ul class="clearfix">
    <li class="Comments_content">
      <div class="username">
       <h5>张小泉</h5>
       <div class="score"><b style="width:100%;"></b></div>
      </div>
      <div class="commentC">其实没想过我这个年纪还能购买跑车，更神奇的是还是通过网络购买！很喜欢野马，也很喜欢汽车之家，给满分好评。我讲讲我的理由： 1、购车方便，不用担心去天津港上当受骗了。 2、购车后有保障。发票付款后当天开的，手续第一时间拿到，耐心的工作人员还会一步步的告知我每一个手续是 干嘛用的，上牌会遇到的问题等等。 3、4999物流就能发运了，这个真棒，我想无良车商是不敢的。 4、销售还有给我交车的工作 人员，尽心尽责，良心话，比4S店还靠谱放心。<span class="commenttime">发表时间：2017-3-10 12:23:23</span></div>
     </li>
	  </ul>
  <div class="comment_page clearfix">
	<div class="comment_Number"> <span class="f_l f6" style="margin-right:10px;">共 <b>0</b> 条评论</span>
	  <div id="comment_Pager_Number" class="comment_Pager_Number"> 
	  <a href="javascript:gotoPage(1,78,0,0)">首页</a>          
      <a class="prev" href="javascript:;">上一页</a>                    
      <a class="next" href="javascript:;">下一页</a>         
      <a class="last" href="javascript:;">尾页</a>	   
      </div>
	</div>
  </div>
</div>
</div>
</div>
      	<script type="text/javascript">
		$('.CommentTab ul').find('li').click(function(){
		  $('.CommentTab ul').find('li').removeClass('active');
		  $('.CommentText').css({display:'none'});
		  $(this).addClass('active');
		  $('.CommentText').eq($(this).index()).css({display:'block'});
		});
		</script>
    </div>
     </ul>    
    </div>
      </div>
      <script>jQuery(".slidecarBox").slide({trigger:"click",delayTime:0});</script>
     </div>
   </div>
   </div>
</div>
</div>
<!--底部样式-->
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
     <h3>获得相关认真授权</h3>
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
    <dd><a href="#">名称</a></dd>
    <dd><a href="#">名称</a></dd>
    <dd><a href="#">名称</a></dd>
    <dd><a href="#">名称</a></dd>
   </dl>
   <dl>
    <dt>关于我们</dt>
    <dd><a href="#">网站介绍</a></dd>
    <dd><a href="#">名称</a></dd>
    <dd><a href="#">名称</a></dd>
    <dd><a href="#">名称</a></dd>
    <dd><a href="#">名称</a></dd>
   </dl><dl>
    <dt>支付方式</dt>
    <dd><a href="#">网站介绍</a></dd>
    <dd><a href="#">名称</a></dd>
    <dd><a href="#">名称</a></dd>
    <dd><a href="#">名称</a></dd>
    <dd><a href="#">名称</a></dd>
   </dl>
  </div>
  <div class="weixin_style">
   <div class="sys_style"><img src="images/waixin.png"  width="100px"/><h5>微信公众号</h5></div>
    <div class="sys_style"><img src="images/waixin.png"  width="100px"/><h5>微信公众号</h5></div>
  </div> 
  <div class="footer_phone"><img src="images/phone.png" /></div> 
  	<h2 style="color: orange;font-style: oblique;">13556510364</h2>
 </div>
 <div class="Copyright">
 <div class="footerbox">
 保险业务经营许可证：2609570xxxx0800 xxxxxxxxxx有限公司：440301105759096 粤ICP备1xxxxxxxx号<br /> Copyright ©2006-2017 易车购汽车服务平台版权所有
 </div> 
 </div>
</div>
<!--浮动图层-->
 <!--右侧菜单栏购物车样式-->
<div class="fixedBox">
  <ul class="fixedBoxList">
    <li class="fixeBoxLi cart_bd" style="display:block;" >
		<p class="good_cart">${acount}</p>
	  <span class="fixeBoxSpan"></span> <strong>购物车</strong></li>
    <li class="fixeBoxLi Service startWork"> <span class="fixeBoxSpan"></span> <strong>在线客服</strong>
      <div class="ServiceBox">
        <div class="bjfff"></div>
        	        		        <dl onclick="javascript:;">
		          <dt><img src="images/Service1.png" width="70px"></dt>
		          <dd> <strong>总会来:346143235</strong>
		            <p class="p1">9:00-22:00</p>
		            <p class="p2"><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=123456&amp;site=DGG三端同步&amp;menu=yes">点击交谈</a></p>
		          </dd>
		        </dl>
	                      </div>
    </li>
    <li class="fixeBoxLi cart_bd erwim" style="display:block;" id="cartboxs">
			<span class="fixeBoxSpan"></span> <strong>微信</strong>
           
			<div class="cartBox"> <div class="bjfff"></div>
       		<img src="小组联系人微信号.png"  width="140px"/> <h4 style=" margin:10px 0px; color:#666; font-weight:normal">汽车销售微信公众号</h4></div></li>
    <li class="fixeBoxLi Home"> <a href="index.jsp"> <span class="fixeBoxSpan"></span> <strong>返回首页</strong> </a> </li>
    <li class="fixeBoxLi BackToTop"> <span class="fixeBoxSpan"></span> <strong>返回顶部</strong> </li>
  </ul>
</div>
<!--确认购买-->
<div class="Purchase_tips none" id="Purchase_tips">
 <div class="margin Purchase_tips_style">
   本次需支付定金<b><fmt:formatNumber type="number" value="${session.car.price*10000*0.01}" pattern="0.00" maxFractionDigits="2" />元</b>确认请点击继续。
   <p class="Purchase_checkbox"><label class="inline"><input type="checkbox" class="ace" id="checkid"><span class="lbl">请确认并已读相关<a href="协议.html" target="_blank">协议</a></span></label></p>
 </div>
</div>
<!---->
<div class="none Shopping_cart_tips" id="Shopping_cart_tips">
 <img src="images/success.png" />
 <h4>加入购物车成功</h4>
</div>
<script>
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
 function detailBuyButton(){
	 layer.open({
	  type: 1,
	  shade: false,
	  title:'提示框',
	  area: ['350px'], //宽高 
	  content: $('#Purchase_tips'),
	  btn: ['确认购买','取消'],
	  yes:function(index){
		  var flag=$("#checkid").attr("checked");
		  if(flag){
			  
			   location.href="carAction!buy.action";
		    layer.close(index);
			  }
		   
		   else{
			   layer.msg('请阅读并点击确认相关协议！',{
				   time: 2000, //3s后自动关闭				   				   
				   });
			   }	
       }
 })
	 
	 
}
/*******************************/
function shopping_cart_btn(){
	 layer.open({
	  type: 1,
	  shade: false,
	  title:'提示框',
	  area: ['350px'],
	  content:$('#Shopping_cart_tips'),
	  btn: ['立即支付','继续购物'],
	  yes:function(index){
		  
		  location.href="购车信息.html";
		    layer.close(index);
		  
		  }
	 })
	
}
</script>
</body>
</html>
