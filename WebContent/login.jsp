<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
<title>登录页面</title>
<style>
* {
	box-sizing: border-box;
}

html, body {
	margin: 0;
	padding: 0;
	height: 100%;
}

body {
	background: radial-gradient(circle, gray, black, black);
	display: flex;
	color: white;
	text-align: center;
	align-items: center;
	justify-content: center;
}

#login {
	width: 450px;
	height: 460px;
	/* border: 1px solid red; */
	border-radius: 5px;
	padding: 30px;
}

#message {
	padding: 20px;
	color: skyblue;
	font: 30px '仿宋';
}

.hr15 {
	height: 15px;
	border: none;
}

.hr20 {
	height: 20px;
	border: none;
}

input[type=text], input[type=password] {
	border: 1px solid #DCDEE0;
	height: 45px;
	border-radius: 5px;
	width: 100%;
	font-size: 15px;
	text-align: center;
}

input[type=submit] {
	width: 100%;
	height: 45px;
	border: none;
	border-radius: 5px;
}
</style>
</head>
<body>
	<div id="login">
		<div id="message">欢迎访问，请登录</div>
		<form action="user/login.action" method="get" name="form1" id = "formuser"
		onsubmit="return validate()">
			<input type="text" name="username" placeholder="请输入账号">
			<hr class="hr15">
			<input type="password" name="password" placeholder="请输入密码">
			<hr class="hr20">
			<input type="submit" value="登录" id = "tj">
		</form>
		<span>若未注册账号，请点击注册按钮</span> <a href="register.jsp"><button>注册</button></a>
	</div>
</body>
<script>

function validate(){
    var name = form1.username.value;
    var password = form1.password.value;
    if (name.trim().length == 0 || password.trim().length == 0) {
        alert("账号密码不能为空");
        return false;
    } 
}
</script>
</html>