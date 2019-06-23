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
<script src="js/layer/layer.js" type="text/javascript"></script>
<title>用户登录</title>
</head>

<body>
<div class="login_top">
 <div class="top clearfix">
  <div class="login_logo" style="width:100px;"><a href="index.jsp"><img src="images/logo.jpg" width="80px" style="float: right;"/></a><h7 class="pingtai_name" align="left">&nbsp; &nbsp; &nbsp; 汽车销售平台</h7></div>
  <div class="login_title">用户登录</div>
   <div class="fw_phone">
    咨询服务热线：
    <h2>13556510364</h2>
   </div>
 </div>
</div>
<!--登录-->
<div class="login_content Reg_log_style">
 <div class="mian_style relative">
  <div class="login_ad"><img src="images/主页1.jpg" height="600px"/></div>
  <div class="login_style">
   <div class="login_Switch">
    <div class="hd"><ul><li class="">账户登录</li><!-- <li>短信验证登录</li> --></ul></div>
    <div class="bd">
     <ul>
       <form class="write_login" action="loginAction!userlogin.action">
	     <fieldset>
		 <ul>
         <li class="frame_style form_error"><label class="user_icon"></label><input name="username" type="text"  id="username"/><i>用户名/手机号/邮箱</i></li>
         <li class="frame_style form_error"><label class="password_icon"></label><input name="password" type="password"   id="userpwd"/><i>密码</i></li> 
         </ul>
		 <div class="space"></div>
         <div class="clearfix mb15 color9" >
          <label class="inline"><input type="checkbox" class="ace"><span class="lbl">保存密码</span></label>  
         <s:fielderror cssStyle="color:red" theme="simple">
         <s:param>error</s:param>
         </s:fielderror>
        </div>        
      <div class="space-4"><button type="submit" class="width-35  btn btn-sm btn-primary" id="login_btn" onclick="">登陆</button></div> 
      <div class="link_bz"><a href="#">忘记密码</a> | <a href="registered.jsp">注册账号</a></div>
       </fieldset>
      </form>
     </ul>
  <!--    <ul>
       <form class="write_login">
	     <fieldset>
		 <ul>
         <li class="frame_style form_error"><label class="phone_icon"></label><input name="手机号" type="text"  id="phone"/><i>手机号</i></li>
         <li class="frame_style form_error"><label class="Codes_icon"></label><input name="验证码" type="text" id="Codes_text"><i>验证码</i><div class="Codes_region"></div></li>
         <li class="frame_style form_error " id="phone_codes"><label class="phone_Codes_icon"></label><input name="手机验证码" type="text" id="phone_Codes_text"><i>手机验证码</i>
         <a class="hz-button get-code-button  btn" href="javascript:;" id="getSmsCode">发送验证码</a></li>
         </ul>
		 <div class="space"></div>
                
      <div class="space-4"><button type="button" class="width-35  btn btn-sm btn-primary" id="p_login_btn" onclick="">登陆</button></div> 
      <div class="link_bz"><a href="#">忘记密码</a> | <a href="registered.html">注册账号</a></div>
       </fieldset>
      </form> 
     </ul> -->
     
    </div> 
    <div class="others-login-box  clearfix">
      <span class="name">使用合作网站账号登录</span>
        <div class="inline-block">
        <a href="#" class="share-icon share-wx-icon ml10"></a>
        <a href="#" class="share-icon share-qq-icon ml10"></a>
        </div></div>
   </div>
  </div>
  <script>jQuery(".login_Switch").slide({trigger:"click",easing:"easeOutCirc",delayTime:0});</script>
 </div>
</div>
<div class="bottom_footer">
<div class="footerbox">
   <p><a href="#">关于我们</a> | <a href="#">联系我们</a> | <a href="#">商家入驻</a> | <a href="#">法律申明</a> | <a href="#">友情链接</a>  </p>
	 <p>Copyright©2014.Gurao.All Rights Reserved. </p>
	 <p>苏ICP备09150084号</p>
     </div>
   </div>
 
 <script>
/* $("form").submit(function() {
	    return false;
	});
$("form").submit(function(e){
	    e.preventDefault();   
	}); */
$('#login_btn').on('click', function(){
	      var num=0;
		 var str="";
		 
		 $("input[type$='text'],input[type$='password']").each(function(n){ 
    /*  $("input[type$='text'],input[type$='password']").each(function(n){ */
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
			  layer.alert('登陆成功！',{
               title: '提示框',				
			   icon:1,		
			  });  
			  $("form").submit();
	          /*  location.href="loginAction!userlogin.action"; */
			   layer.close(index);	
 		 	 }   		     						
		
	});
  $(document).ready(function(){
	 $("input[type='text'],input[type='password']").blur(function(){
        var $el = $(this);
        var $parent = $el.parent();
        $parent.attr('class','frame_style').removeClass(' form_error');
        if($el.val()==''){
            $parent.attr('class','frame_style').addClass(' form_error');
        }
    });
	$("input[type='text'],input[type='password']").focus(function(){		
		var $el = $(this);
        var $parent = $el.parent();
        $parent.attr('class','frame_style').removeClass(' form_errors');
        if($el.val()==''){
            $parent.attr('class','frame_style').addClass(' form_errors');
        } else{
			 $parent.attr('class','frame_style').removeClass(' form_errors');
		}
		});
	  })

</script>
</body>
</html>

