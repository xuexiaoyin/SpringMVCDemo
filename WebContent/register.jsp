<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
    <title>注册页面</title>
    <style>
        html,
        body {
        
            margin: 0;
            height: 100%;
        }
        body{
            background-color: deepskyblue;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        td{
            font-size: 20px;
            font-family: '仿宋';
        }
        #account{
            display: block;
            width: 150px;
            line-height: 22px;
            border-radius: 4px;
            border: 0;
        }
        input[type=password]{
            display: block;
            width: 150px;
            line-height: 22px;
            border-radius: 4px;
            border: 0;
            margin-top: 10px;
        }
        #btn{
            border: 0;
            border-radius: 5px;
        }
        
    </style>
    <script>
    //校验账号
    var validateAcc = false;
    $(function () {
    	$("#account").blur(function() {
    		var account = $("#account").val();
    		if (account != null && account != "") {
    			
    			var params = {"account":account};
        		$.post("AjaxResisterAcc.action",params,function(status){
        			alert(status);
        			if (status == "success") {
        				validateAcc = true;
						$("#validateAcc").text("该账号可用");
					} else {
						validateAcc = false;
						$("#validateAcc").text("该账号不可用");
					}
        		})
			}else {
				validateAcc = false;
				$("#validateAcc").text("账号不能为空");
			}
		});
    	$("#againPsw").blur(function () {
			var pas = $("#psw").val();
			var againPas = $("#againPsw").val();
			if (pas != againPas) {
				$("#validatePsw").text("密码错误");
			} else if(null == pas || againPas =="" || null == againPas || pas == ""){
				$("#validatePsw").text("密码不能为空");
			}else {
				$("#validatePsw").text("密码正确");
			}
		});
	}) ;
	
    
</script>
</head>

<body>
	<!-- onsubmit="return validate()" -->
    <form action="user/regist.action" name="form1" >
        <table border="0" cellspacing = "0">
            <tr >
                <th align="left" style="color: crimson ;font-size: 20px; font-family: '仿宋'" colspan="3">请按要求输入注册信息</th>
            </tr>
            <tr>
                <td>账&nbsp;&nbsp;&nbsp;&nbsp;号：</td>
                <td>
                    <input type="text" name="account" id="account">
                </td>
                <td>
                    <span id="validateAcc" style="color: red;width: 150px;display: block"></span>
                </td>
            </tr>
            <tr>
                <td>密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
                <td><input type="password" id="psw" name="pas"></td>
            </tr>
            <tr>
                    <td>确认密码：</td>
                    <td><input type="password" name="password" id="againPsw"></td>
                    <td><span id="validatePsw" style="color: red;width: 150px;display: block"></span></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" id="btn" value="注册" 
                    style="width: 100px; height: 30px; margin-top: 10px"></td>
            </tr>
        </table>
    </form>
</body>
</html>