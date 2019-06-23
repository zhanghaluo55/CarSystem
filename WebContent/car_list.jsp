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
<link href="css/Fliter.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.1.8.2.js" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="js/common_js.js" type="text/javascript"></script>
<script src="js/footer.js" type="text/javascript"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<script src="js/Filter.js" type="text/javascript"></script>
<title>汽车列表</title>
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
	   <!-- <li class="hd_menu_tit" data-addclass="hd_menu_hover"> <a href="保单查询.html">保单查询</a> </li> -->
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
<!--汽车列表-->
<div class="pages_style">
<div class="page clearfix">
 <div class="marginsx20">
 <!--面包屑-->
 <div class="Location_link">
  <em></em><a href="index.jsp">首页</a>  &lt;   <a href="carAction!pagelist.action?page=1">汽车</a>  
 </div>
 <div class="left_filter">
 
   <!--分类--> 
   <div class="classification Brand_selection">
     <div class="title_name">销售品牌 <a href="brand.jsp" class="Brand_link">全部</a></div>
     <div id="Brandselectbox" class="clearfix sideMenu" >
      <div class="Menu_list">
       <div class="name">
       <div class="Menu_name"><a href="#" >国产品牌</a></div>
        <ul class="link_name">
        <a href="carAction!selectbyBrand.action?brand='比亚迪'" class="Brand_link_name"><span class="Brand_logo"><img src="carImage/商标/比亚迪.jpg" width="45px;" height="35px"/></span>比亚迪</a>
        <a href="carAction!selectbyBrand.action?brand='五菱'" class="Brand_link_name"><span class="Brand_logo"><img src="carImage/商标/五菱.jpg" width="45px;" height="35px"/></span>五菱</a>
        <a href="carAction!selectbyBrand.action?brand='红旗'" class="Brand_link_name"><span class="Brand_logo"><img src="carImage/商标/红旗.jpg" width="45px;" height="35px"/></span>红旗</a>
         <a href="carAction!selectbyBrand.action?brand='九龙'" class="Brand_link_name"><span class="Brand_logo"><img src="carImage/商标/九龙.jpg" width="45px;" height="35px"/></span>九龙</a>
        <a href="carAction!selectbyBrand.action?brand='长安'" class="Brand_link_name"><span class="Brand_logo"><img src="carImage/商标/长安.jpg" width="45px;" height="35px"/></span>长安</a>
        <a href="carAction!selectbyBrand.action?brand='奇瑞'" class="Brand_link_name"><span class="Brand_logo"><img src="carImage/商标/奇瑞.jpg" width="45px;" height="35px"/></span>奇瑞</a>
        </ul>
      </div>
       <div class="name">
       <div class="Menu_name"><a href="#" >国际品牌</a></div>
        <ul class="link_name">
       <a href="carAction!selectbyBrand.action?brand='本田'" class="Brand_link_name"><span class="Brand_logo"><img src="carImage/商标/本田.jpg" width="45px;" height="35px"/></span>本田</a>
       <a href="carAction!selectbyBrand.action?brand='铃木'" class="Brand_link_name"><span class="Brand_logo"><img src="carImage/商标/铃木.jpg" width="45px;" height="35px"/></span>铃木</a>
       <a href="carAction!selectbyBrand.action?brand='奥迪'" class="Brand_link_name"><span class="Brand_logo"><img src="carImage/商标/奥迪.jpg" width="45px;" height="35px"/></span>奥迪</a>
       <a href="carAction!selectbyBrand.action?brand='法拉利'" class="Brand_link_name"><span class="Brand_logo"><img src="carImage/商标/法拉利.jpg" width="45px;" height="35px"/></span>法拉利</a>
       <a href="carAction!selectbyBrand.action?brand='奔驰'" class="Brand_link_name"><span class="Brand_logo"><img src="carImage/商标/奔驰.jpg" width="45px;" height="35px"/></span>奔驰</a>
       <a href="carAction!selectbyBrand.action?brand='劳斯莱斯'" class="Brand_link_name"><span class="Brand_logo"><img src="carImage/商标/劳斯莱斯.jpg" width="45px;" height="35px"/></span>劳斯莱斯</a>
       <a href="carAction!selectbyBrand.action?brand='福特'" class="Brand_link_name"><span class="Brand_logo"><img src="carImage/商标/福特.jpg" width="45px;" height="35px"/></span>福特</a>
       <a href="carAction!selectbyBrand.action?brand='宝马'" class="Brand_link_name"><span class="Brand_logo"><img src="carImage/商标/宝马.jpg" width="45px;" height="35px"/></span>宝马</a>
        </ul>

      </div>
<%--          <div class="name">
       <div class="Menu_name"><a href="#" >C</a></div>
        <ul class="link_name"><a href="#" class="Brand_link_name"><span class="Brand_logo"><img src="images/logo/icon_logo_03.png" width="45px;"/></span>大众</a></ul>

      </div> --%>
     
      </div>
      </div>
   </div >
  <script type="text/javascript">
			jQuery(".sideMenu").slide({
				titCell:".Menu_name", //鼠标触发对象
				targetCell:"ul", //与titCell一一对应，第n个titCell控制第n个targetCell的显示隐藏
				effect:"slideDown", //targetCell下拉效果
				trigger:"click",
				defaultIndex:0,
				triggerTime:150, //鼠标延迟触发时间（默认150）
				defaultPlay:true,//默认是否执行效果（默认true）
				returnDefault:false //鼠标从.sideMen移走后返回默认状态（默认false）
				});
		</script>
   <div class="classification car_dynamic">
    <div class="title_name"><em class="fa fa-car"> </em>最新汽车动态</div>
     <ul>
      <li><em class="icon_quan"></em><a href="#">车损无法找到第三方责任险</a></li>
      <li><em class="icon_quan"></em><a href="#">车损无法找到第三方责任险</a></li>
      <li><em class="icon_quan"></em><a href="#">车损无法找到第三方责任险</a></li>
      <li><em class="icon_quan"></em><a href="#">车损无法找到第三方责任险</a></li>
      <li><em class="icon_quan"></em><a href="#">车损无法找到第三方责任险</a></li>
      <li><em class="icon_quan"></em><a href="#">车损无法找到第三方责任险</a></li>
      <li><em class="icon_quan"></em><a href="#">车损无法找到第三方责任险</a></li>
     </ul>
   </div>
   <div class="classification">
     <a href="#"><img src="images/ad_1.jpg"  width="248px" height="248px"/></a>
   </div>
 </div>
 <div class="right_cars_list">
 <!--条件筛选-->
 <!-- <div class="Filter">
    <div id="demo5"></div>
    <div id="demo6"></div>
    <div id="demo7"></div>
    <div id="demo9"></div>
</div> -->
 <!-- <div class="Filter">
  <div class="Filter_list clearfix">
   <div class="Filter_title"><span>车型：</span></div>
   <div class="Filter_Entire"><a href="#">全部</a></div>
   <div class="p_f_name">
    <a href="#">两厢轿车</a>     
   <a href="#">三厢轿车</a>  
   <a href="#">SUV</a>
   <a href="#">面包车</a>
   <a href="#">MPV</a>
   <a href="#">跑车</a>
   <a href="#">微型车</a> 
   </div>
  </div>
  <div class="Filter_list clearfix">
  <div class="Filter_title"><span>产地：</span></div>
  <div class="Filter_Entire"><a href="#">全部</a></div>
  <div class="p_f_name">
   <a href="#">国产</a>     
   <a href="#">进口</a>     
  </div>
  </div>
  <div class="Filter_list clearfix">
  <div class="Filter_title"><span>档位：</span></div>
  <div class="Filter_Entire"><a href="#">全部</a></div>
  <div class="p_f_name">
  <a href="#">手动挡</a><a href="#">自动挡</a><a href="#">手自一体</a>
  </div>
  </div>
  <div class="Filter_list clearfix">
  <div class="Filter_title"><span>价格：</span></div>
  <div class="Filter_Entire"><a href="#">全部</a></div>
  <div class="p_f_name">
    <a href="#">0万-5万</a><a href="#">5-15万</a><a href="#">15万-20万</a><a href="#">25万-50万</a><a href="#">50万以上</a>
  </div>
  </div>
 </div>-->
  <div class="cars_list">
   <div class="Sorted">
    <div class="Sorted_style">
     <a href="carAction!orderbysb.action?sb=cid&page=1" class="on">综合&nbsp;<i class="fa fa-chevron-down"></i></a>
     <a href="carAction!orderbysb.action?sb=sales&page=1">销量&nbsp;<i class="fa fa-chevron-down"></i></a>
     <a href="carAction!orderbysb.action?sb=price&page=1">价格&nbsp;<i class="fa fa-chevron-down"></i></a>
     <a href="carAction!orderbysb.action?sb=cid&page=1">新品&nbsp;<i class="fa fa-chevron-down"></i></a>
     </div>
     <div class="Price_search">
       搜索价格：<input id="minPrice" name="" type="text"  class="add_Price" placeholder="￥"/>至<input id="maxPrice" name="" type="text"  class="add_Price" placeholder="￥"/>
       <input name="input" type="button"  class="btn Search_Submit" value="搜索" onclick="selectPrice()"/>
     <script type="text/javascript">
     	function selectPrice()
     	{
     		location.href="carAction!selectbyPrice.action?min="+$("#minPrice").val()+"&max="+$('#maxPrice').val();
     	}
     </script>
     </div>
     <!--页数-->
      <div class="s_Paging"><span> ${pageBean.currentPage}/${pageBean.totalPage}</span><a href="#" class="on">&lt;</a><a href="#">&gt;</a></div>
    </div>
  </div>
   <!--产品列表-->
  
   <div class="p_car_list clearfix marginsx">
    <ul class="">
     <s:iterator value="#request.session.pageBean.list">
     <li class="gl-item">
	<div class="Borders">
<%--      <span class="car_Origin">进口车</span> --%>
	 <div class="img"><a href="carAction!carIntro.action?car.cid=${cid}"><img src="carImage/${picturePath}1.jpg" style="width:220px;height:165px"></a></div>
	 <div class="Price"><em>￥</em><b>${price}万</b><span><fmt:formatNumber type="number" value="${price+2}" pattern="0.00" maxFractionDigits="2" />万</span></div>
	 <div class="name"><a href="#" title="${title}">${title}</a></div>
     <div class="carbox-tip" title="${cname}">${cname}</div>
	 <div class="Review">已有${sales}<a href="#"></a>购买记录</div>	
	 </div>
	</li>
	</s:iterator>
    </ul>
    <!--购物车为空时的样式-->
 <!--<div class="empty_style">
      <p><img src="images/icon_empty.png" /></p>
      <h2>商品列表为空，你查找的商不存在，请从新查找，</h2>
      <p class="pddl_operating clearfix">
       <a href="login.html" class="btn btn_bule radius">登录</a>
       <a href="registered.html" class="btn  btn_red radius ">注册</a>
      </p>
     </div>-->
    <!--分页样式-->
    <div class="Paging">
     <a href="carAction!pagelist.action?page=<s:property value="#request.session.pageBean.currentPage - 1"/>" class="pn-prev disabled">&lt;上一页</a>
<%--      <s:bean name="org.apache.struts2.util.Counter" >
     	<s:param name="first" value="1"/>
     	<s:param name="last" value="#request.pageBean.totalPage"/>
     	 <s:iterator>
     	 	 <a href="userAction.action?page=<s:property value="%{#status.count}"/>"></a>

     	 </s:iterator>
     </s:bean> --%>
    
	<c:forEach begin="1" end="${pageBean.totalPage}" step="1" var="i">
	<c:choose>	
		<c:when test="${pageBean.currentPage==i}">
			<a id="ye" href="carAction!pagelist.action?page=${i}" class="on">${i}</a>		
		</c:when>
		<c:otherwise>
			<a id="ye" href="carAction!pagelist.action?page=${i}">${i}</a>
		</c:otherwise>
	</c:choose>
	</c:forEach>
	<!--  <a href="#" class="on">1</a>
	 <a href="#">2</a>
	 <a href="#">3</a>
	 <a href="#">4</a> -->
	
	 <a href="carAction!pagelist.action?page=<s:property value="#request.session.pageBean.currentPage + 1"/>">下一页&gt;</a>
	 <a href="carAction!pagelist.action?page=<s:property value="#request.session.pageBean.totalPage"/>">尾页</a>
	<span class="p-skip"><em>共<b><s:property value="#request.session.pageBean.totalPage"/></b>页&nbsp;&nbsp;到第</em>
	<input id="page_jump_num" class="input-txt">
	<em>页</em><a id="yemian" class="btn btn-default">确定</a></span>
   </div>
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
    <!-- <div class="sys_style"><img src="小组联系人微信号.png"  width="100px"/><h5>微信公众号</h5></div> -->
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
		          <dd> <strong>总会来：346143235</strong>
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
</body>
<script>
$(document).ready(function(){
   $("#yemian").click(function(){
       var pg = $("#page_jump_num").val();


       //设置linkToCart的href的值
       $("#yemian").attr("href","carAction!pagelist.action?page="+pg);
   });
 });

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
/******************/
var data=[
    {
        "id": 1,
        "text": '两厢轿车'
    },
    {
        "id": 2,
        "text": '三厢轿车'
    },
    {
        "id": 3,
        "text": 'suv'
    },
    {
        "id": 4,
        "text": '跑车'
    },
	{
        "id": 5,
        "text": '轻型车'
    },
	{
        "id": 6,
        "text": 'MPV'
    },
	{
        "id": 7,
        "text": '微面'
    },
	{
        "id": 8,
        "text": '皮卡'
    },
	{
        "id": 9,
        "text": '跑车'
    },
	{
        "id": 10,
        "text": '跑车'
    }]

  	 $('#demo5').comboboxfilter({
        url: '',
		scope: 'FilterQuery3',
		unlimitText:'全部',
		text:'车型：',
		data:data,
		multiple: true,
		onChange:function(newValue){
		$('#demo_value').val(newValue);
		}
    });
  $('#demo6').comboboxfilter({
        url: '',
		scope: 'FilterQuery3',
		unlimitText:'全部',
		text:'产地：',
		multiple: true,
		data:data,
		onChange:function(newValue){
		$('#demo_value').val(newValue);
		}
    });
	 $('#demo7').comboboxfilter({
        url: '',
		scope: 'FilterQuery3',
		unlimitText:'全部',
		text:'档位：',
		multiple: true,
		data:data,
		onChange:function(newValue){
		$('#demo_value').val(newValue);
		}
    });
	 $('#demo9').comboboxfilter({
        url: '',
		scope: 'FilterQuery3',
		unlimitText:'全部',
		text:'价格：',
		multiple: true,
		data:data,
		onChange:function(newValue){
		$('#demo_value').val(newValue);
		}
    });
</script>

</html>
