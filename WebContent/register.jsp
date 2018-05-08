<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="utf-8">
		<title>注册界面</title>
		<link rel="stylesheet" href="css/reset.css" />
		<link rel="stylesheet" href="css/common.css" />
		<link rel="stylesheet" href="css/font-awesome.min.css" />
		<script type="text/javascript">
		function check(theform){
			if(theform.username.value==""){
				alert("用户名不能为空！");
				theform.username.focus();
				//event.preventDefault();
				return false;
			}
			if(theform.password.value==""){
				alert("密码不能为空！");
				theform.password.focus();
				//event.preventDefault();
				return false;
			}
			if(theform.password.value!=theform.password2.value){
				alert("两次密码不一致！");
				theform.password.focus();
				//event.preventDefault();
				return false;
			}
			if(theform.email.value==""){
				alert("邮箱不能为空！");
				theform.password.focus();
				//event.preventDefault();
				return false;
			}
			if(theform.phone.value.length!=11){
				alert("请填写正确的手机号！");
				theform.password.focus();
				return false;
			}
		}
		function checkAddress(){
			var reg=/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
			if(!reg.test(document.form.email.value)){
				alert("请填写正确的邮箱格式！");
				document.form.email.value=="";
				document.form.email.focus();
			}
		}
		</script>
</head>
	<body>
		<div class="wrap login_wrap">
			<div class="content">
				
				<div class="logo"></div>
				
				<div class="login_box">	
					
					<div class="login_form">
						<div class="login_title">
							注册
						</div>
						<form name="form" action="doregister.jsp" onsubmit="return check(this)" method="post">
							
							<div class="form_text_ipt">
								<input name="username" type="text" placeholder="用户名">
							</div>
							<div class="form_text_ipt">
								<input name="password" type="password" placeholder="密码">
							</div>
							<div class="form_text_ipt">
								<input name="password2" type="password" placeholder="重复密码">
							</div>
							<div class="form_text_ipt">
								<input name="phone" type="text" placeholder="手机号" >
							</div>
							<div class="form_text_ipt">
								<input name="email" type="text" placeholder="邮箱" onBlur="checkAddress()">
							</div>
							<div class="form_btn">
								<input type="submit" value="注册">
							</div>
							<div class="form_reg_btn">
								<span>已有帐号？</span><a href="index.jsp">马上登录</a>
								<br><span>&nbsp;</span>
							</div>
						</form>
					</div>
				</div>
			</div>

		</div>
				<div style="text-align:center;margin-top:-30px;">
			<div class="copyright">川川科技有限公司 版权所有©2018-2999 技术支持电话：15996351113</div>
		</div>
		
	</body>
</html>
