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
<title>用户中心-用户信息</title>
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
	  	<li class="hd_menu_tit list_name" data-addclass="hd_menu_hover"><a href="javascript:" class="hd_menu">我的订单</a>
	   </s:else> 
	   
         <div class="hd_menu_list" style="display: none;">
		   <ul>
		<!--     <li><a href="询价订单.html">询价订单</a></li>
		    <li><a href="保险订单.html">保险订单</a></li> -->
            <li><a href="user_order.jsp">新车订单</a></li>
		   </ul>
		</div>
       </li> 
	   <!-- <li class="hd_menu_tit" data-addclass="hd_menu_hover"> <a href="保单查询.html">保单查询</a> </li> -->
	   <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="网站地图.html">网址导航</a></li>
	   <li class="hd_menu_tit list_name" data-addclass="hd_menu_hover"><a href="帮助中心.html" class="hd_menu">帮助中心</a>
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
            <img src="images/waixin.png"  width="120px" height="120"/>
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
      
   </div><s:if test="#session.user1==null">
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
<!--用户中心-用户信息-->
  <div class="Insurance_content  pages_style">
  <div class="page clearfix">
    <div class="user_style clearfix">
      <!--左侧栏目样式属性-->
       <div class="left_style">
    <div class="menu_style">
     <div class="user_title">用户中心</div>
     <div class="user_Head">
     <div class="user_portrait">
      <a href="#" title="修改头像" class="btn_link"></a> <img src="images/people.png">
      <div class="background_img"></div>
      </div>
      <div class="user_name">
       <p><span class="name">${user1.uname}</span><a href="user_password.jsp">[修改密码]</a></p>
       <p id="time">访问时间：<SCRIPT>document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());setInterval("document.getElementByIdx('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);</SCRIPT></p>
       </div>           
     </div>
     <div class="sideMen">
     <!--菜单列表图层-->
     <dl class="accountSideOption1">
      <dt class="transaction_manage"><a href="orderAction!pagelist.action?page=1"><em class="icon_jiantou"></em>新车订单</a></dt>
        <dd>
      <ul>
          <li> <a href="">待支付</a></li>
          <li> <a href="">已支付</a></li>
      </ul>
    </dd><!-- 
    </dl>       <dl class="accountSideOption1">
      <dt class="transaction_manage"><a href="用户中心_询价订单.html"><em class="icon_jiantou"></em>询价订单</a></dt>
    </dl> <dl class="accountSideOption1">
      <dt class="transaction_manage "><a href="用户中心_订单管理.html"><em class="icon_jiantou"></em>保险订单</a></dt>
      <dd >
        <ul>
          <li> <a href="用户中心_订单管理.html">待支付（0）</a></li>
          <li> <a href="用户中心_订单管理.html">已支付（0）</a></li>
          <li> <a href="用户中心_订单管理.html">投保订单（0）</a></li>
         
        </ul>
      </dd>
    </dl> -->
     <dl class="accountSideOption1">
      <dt class="transaction_manage"><a href="javascript:"><em class="icon_jiantou"></em>账户管理</a></dt>
      <dd>
       <ul>
      <li> <a href="user_intro.jsp">个人信息</a></li>
      <li><a href="user_password.jsp">密码管理</a></li>
      <li> <a href="#">头像管理</a></li>

      </ul>
     </dd>
    </dl>
     <dl class="accountSideOption1">
      <dt class="transaction_manage"><a href="javascript:"><em class="icon_jiantou"></em>帮助管理</a></dt>
      <dd >
        <ul>
          <li> <a href="#">帮助中心 </a></li>
          <li> <a href="#">在线提问 </a></li>
          <li> <a href="#">违章记录</a></li>
          <li> <a href="#">建议反馈</a></li>
        </ul>
      </dd>
    </dl>
    </div>
      <script>jQuery(".sideMen").slide({titCell:"dt", targetCell:"dd",defaultIndex:1,effect:"slideDown",delayTime:300,trigger:"click"});</script>
   </div>  
  </div>
  <!--右侧样式-->
 
   <div class="right_style Plate_info ">
   <div class="title_name">用户信息</div>
  <div class="Personal_info " id="Personal">
  <form action="userAction!Update.action">
  <ul class="xinxi">
          <li><label>昵称：</label>  <span class="info_style"><input name="user.uname" type="text" value="${user1.uname}" class="text text_info " ></span></li>
          <li><label>真实姓名：</label>  <span class="info_style"><input name="user.realname" type="text" value="${user1.realname}" class="text text_info " ></span></li>
          <li><label>出身日期：</label> <span class="info_style time"><s:property value="#session.user1.udate"/></span>
           <div class="add_time">
            <%--   <select name=""></select><select name=""></select><select name=""></select> --%>
           	<input name="user.udate" type="date" value="<s:property value="#session.user1.udate"/>"/>
           </div> 
          </li>
          <li><label>用户性别：</label> <span class="info_style sex">${user1.gender}</span>
          <div class="add_sex clearfix">
          <label class="inline"><input type="radio"  name="user.gender" class="ace" value="保密"><span class="lbl">保密</span></label>  
          <label class="inline"><input type="radio"  name="user.gender" class="ace" value="男"><span class="lbl">男</span></label>  
          <label class="inline"><input type="radio"  name="user.gender" class="ace" value="女"><span class="lbl">女</span></label>  
           </div></li>
          <li><label>移动电话：</label>  <span class="info_style"><input name="user.phone" type="text" value="${user1.phone}" class="text text_info " ></span></li>
      
          
          <div class="Button_operation clearfix"> 
				<button onclick="modify();" type="button" class="btn btn_bule radius" >修改信息</button>				
				<button onclick="save_info();" type="submit" class="btn btn_red radius " id="Save_info" style="display:none">保存修改</button>              
			</div>
	
    </ul>
    </form> 
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
   <div class="sys_style"><img src="images/waixin.png"  width="100px"/><h5>微信公众号</h5></div>
    <div class="sys_style"><img src="images/waixin.png"  width="100px"/><h5>微信公众号</h5></div>
  </div> 
  <div class="footer_phone"><img src="images/phone.png" /></div> 
 </div>
 <div class="Copyright">
 <div class="footerbox">
 保险业务经营许可证：2609570xxxx0800 xxxxxxxxxx有限公司：440301105759096 粤ICP备1xxxxxxxx号<br /> Copyright ©2006-2017 汽车销售汽车服务平台版权所有
 </div> 
 </div>
</div>  
</body>
</html>
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
//按钮点击事件
function modify(){
	/*  $('.text_info').attr("disabled", false); */
	 $('.text_info').addClass("add");
	  $('#Personal').find('.xinxi').addClass("hover");
	  $('#Personal').find('#Save_info').css({'display':'block'});
	};
function save_info(){
	    var num=0;
		 var str="";
     $(".xinxi input[type$='text']").each(function(n){
          if($(this).val()=="")
          {
               
			   layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
                title: '提示框',				
				icon:0,								
          }); 
		    num++;
            return false;            
          } 
		 });
		  if(num>0){  return false;}	 	
          else{
			  
			   layer.alert('修改成功！',{
               title: '提示框',				
			   icon:1,			   		
			  });
			  $('#Personal').find('.xinxi').removeClass("hover");
			  /* $('#Personal').find('.text_info').removeClass("add").attr("disabled", true); */
			  $('#Personal').find('#Save_info').css({'display':'none'});
			  
			   layer.close(index);
			   
		  }		  		
	};	
</script>