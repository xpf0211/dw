<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>调问网</title>
<meta name="keywords" content="调问" />
<meta name="description" content="调问调研系统" />

<script type="text/javascript" src="../assets/js/jquery-1.10.1.js"></script>
<script type="text/javascript" src="../assets/js/responsive-width.js"></script>
<script type="text/javascript" src="../assets/js/juery-ui-1.10.3.custom.js"></script>
<link href="../assets/css/dw-user.css" rel="stylesheet" type="text/css" />

<script src="../assets/js/jquery.cookie.js" type="text/javascript"></script>
<link href="../assets/css/jquery.validate.css" type="text/css" rel="stylesheet" />
<script src="../assets/js/jquery.validate.js" type="text/javascript"></script>
<script src="../assets/js/messages_cn.js" type="text/javascript"></script>
<script src="../assets/js/jquery.metadata.js" type="text/javascript"></script>
<link rel="icon" href="../assets/images/gallery/index.ico" type="image/x-icon" />
<script type="text/javascript">
	$(document).ready(function(){

		var loginFormValidate=$("#loginForm").validate({
			rules:{
				username:{required:true,email:true,minlength:3,maxlength:60},
				//email:{required:true,email:true,maxlength:60},
				password:{required:true,minlength:6,maxlength:40}
			},
			messages: {
				username: {
		    		minlength:"不能少于3个字符！",
					maxlength:"不能超过60个字符！",
					email: "邮箱格式不正确！",
					required: "登录名不能为空！"
				},
				password:{
					required: "密码不能为空！"
		    	}
			},
			errorPlacement: function(error, element) {
			    //error.appendTo(element.parent().parent());
				element.parent().append(error);
			//	$(element).css("borderColor","#C40000");
			}
		});
		
		var ckCodeError=$.cookie("registerError");
		if(ckCodeError!=null && ckCodeError=="0"){
			$("#register-error").text("验证码不正确!");
			$.removeCookie('registerError',{path:'/'});
		}
		
	});
</script>
<style type="text/css">
label.error{
	display: block;
	margin-top: 3px;
}
#header{
	opacity:0.9;
}
#dwLoginContent{
	opacity:0.95;
}
</style>
</head>
<body style="background-color: #537088;">


 



 
 
 
 
 

<div class="m-logbg"><img src="../assets/images/gallery/indexlog.jpg" style="margin-top:0px; margin-left: 0px; opacity: 1;" width="100%" ></div>


<div id="wrap" class="wrapLogin">

	<input type="hidden" id="id" name="id" value="">
	<input type="hidden" id="ctx" value="">
	







<script type="text/javascript" >
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?ebe23eb396f5a803e26ea4bd102a8b0f";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>


<style>
	.gitItem{
		padding: 0px;
		margin: 0px;
		background: #24292C;
	}
	.gitItem a{
		margin: 0px;
		width: 95px;
		font-size: 14px;
		padding: 10px 40px;
	}
	.gitItem a:hover{
		background: black;
	}
</style>
<div id="header" >
		<div id="headerCenter"  class="bodyCenter">
			<div class="header_Item header_logo">
			
			
<a href="/"><img alt="调问网" src="../assets/images/gallery/index.png" align="middle" height="46" ><span class="titleTempSpan">OSS</span></a>


			</div>
			
				<!-- <div class="header_Item header_menu">
				<ul>
				<li><a href="/" class="active dw-menu-a" id="indexMenu">首页</a></li>
				<li><a href="/serve.jsp" class="dw-menu-a" id="featureMenu">服务</a></li>
				
				<li><a href="https://gitee.com/wkeyuan/DWSurvey" class="dw-menu-a">gitee</a></li>
				<li><a href="https://github.com/wkeyuan/DWSurvey" class="dw-menu-a">github</a></li>
				
				<li><a href="http://support.diaowen.net/" class="dw-menu-a" id="helpMenu">帮助</a></li>
				
				</ul>
				</div> -->
				<div class="header_Item header_user" style="float: right;">
					
					
					<a href="../jsp/getstart.jsp" class="btn-a-1 active">注册</a>
				</div>
			
			
			
		</div>
		<div style="clear: both;"></div>
	</div>
	<div style="clear: both;"></div>
	<div id="dwBody" >
		<div id="dwBodyContent" class="bodyCenter" style="background: none;">
				
					<div class="dw_login_logo">
						<h1 class="f1">DIAOWEN</h1>
						<h2 class="f2" style="width: 460px;">调问专业<span class="f3">、</span>开源<span class="f3">、</span>实用的调研方式</h2>
					</div>
					
					
					
					<div id="dwLoginContent">
						<div class="dlcTitleBg" ></div>
						<div class="dlcTitle" >
							<a href="#" class="dlcTitleTab crt" >登录</a>
						</div>
						
					<div class="loginFormContent">
						
						<form id="loginForm" action="../jsp/dw.jsp" method="post">
						<div id="loginTabContent" >
							<div id="login-error" class="errorMsg" style="color: red;padding-left: 60px;">&nbsp;
						   
								
								
								
							
							</div>
							<div class="dlcLeft">
								<div class="frmItem">
									<label for="" class="frm_label">邮箱</label>
									<div class="frm_controls">
										<input id="username" type="text" class="frm-controlM" name="username" value="" >
										<span class="frm_desc">用来登录调问网，接收到激活邮件才能完成注册</span>
									</div>
								</div>
								<div class="frmItem">
									<label for="" class="frm_label">密码</label>
									<div class="frm_controls">
										<input type="password"  name="password" id="passwordInput"  class="frm-controlM" value="" >
										<span class="frm_desc">字母、数字或者英文符号，最短6位，区分大小写</span>
									</div>
								</div>
								<div class="frmItem"  style="display: none;">
									<label for="" class="frm_label">验证码</label>
									<div class="frm_controls">
										<span class="auth-code" id="verifycodeImgArea">
										<input name="jcaptchaInput" type="text"  class="" style="width:100px;" autocomplete="off">
										<img id="jcaptchaImg"  class="refreshJcaptchaImg" src="/jcaptcha.action" alt="验证码"  height="40"></span>
										<a class="refreshJcaptchaImg" href="javascript:;" style="margin-left: 5px;">换一张</a>
										<span class="frm_desc">输入下面图片的字符，不区分大小写</span>
										<p class="valid-msg fail" style="display: none;"><i>●</i><span class="msg_content">验证码错误，请重新输入</span></p>
									</div>
								</div>
								<div class="frmItem" style="display: none;padding: 3px 5px;padding-bottom: 7px;">
									<label for="" class="frm_label">&nbsp;</label>
									<label class="frmItemLabel" ><input id="agree" name="agree" type="checkbox" checked="checked">我同意并遵守<a href="#" target="_blank">《KX调研问卷系统服务协议》</a></label>
								</div>
								<div class="frmItem" style="padding: 6px 5px;">
									<label for="" class="frm_label">&nbsp;</label>
									<input type="submit"  value=" 登 录 " class="btnGreen" style="width: 330px;height: 45px;" />
								</div>
								
								<!-- <div class="frmItem" style="/*overflow: auto;*/padding: 10px 0px;">
									<label for="" class="frm_label">&nbsp;</label>
									<label class="frmItemLabel" style="float: left;">
										<input id="agree" name="agree" type="checkbox" checked="checked" style="color: color: #777;;">
									</label>
									<span class="ztagCheckbox checkedTrue">
									
									
									
								</div> -->

								<div class="frmItem" style="padding: 10px 5px;text-align: left;">
									
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="../jsp/getstart.jsp">免费申请</a>
								</div>
						</div>
						<div class="dlcRight">
							
<div style="color: gray;">
	<h3 style="line-height: 40px;">联系信息</h3>
	<p style="line-height: 40px;">邮箱：88888888@qq.com</p>
	<p style="line-height: 40px;">电话：88888888</p>
	<p style="line-height: 40px;">湘ICP备88888888号-8</p>
</div>


						</div>
						</div>
						</form>
						
					</div>
			</div>
			
			
		</div>
	</div>
	
	<div class="dw_foot" style="padding-top:15px;">
		<!-- 必须保留声明 start -->
	<div class="footer-copyright" style="color: gray;padding-top: 0px;font-size: 16px;">
		Powered by <a href="http://www.dwsurvey.net" style="text-decoration: none;color: gray;">DWSurvey</a>
		&nbsp;&nbsp;&nbsp;Copyright © 2017-8888
		<a href="http://www.diaowen.net" style="text-decoration: none;color: rgb(53, 117, 136);">调问网</a>
	</div>
		<!-- 必须保留声明 end -->
	</div>
	
	</div>
<script type="text/javascript">
resizeBodyWidth();
$(".dlcTitleBg").animate({opacity:0.6},0);
$("a").attr("hidefocus",true);
</script>

<script type="text/javascript">

$(document).ready(function(){
	 
	 var top=$(window).height()/2-320/2;
	 var left=$(window).width()/2-550/2;
	 //var A=window.open(url,"TencentLogin","top="+top+",left="+left+",width=550,height=320,menubar=0,scrollbars=1,resizable=1,status=1,titlebar=0,toolbar=0,location=1");

});
</script>
</body>
</html>