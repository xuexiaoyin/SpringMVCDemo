<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>展示</title>
</head>
<body>
	<form action="tofindStu.action">
		学生姓名：<input type="text" name="name"><br>
		入学时间：<input type="text" name = "inSchDate">
		<!-- 班级编号<input type="text" name = "classInfo.classNum"><br> -->
		<input type="submit" value="查询">
	</form>
	
	<form action="del.action">
		<table border="1">
			<tr>
				<td>请选择</td>
				<td>用户</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="ids" value = "你"></td>
				<td>Jack</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="ids" value = "好"></td>
				<td>Tom</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="ids" value = "啊"></td>
				<td>Herry</td>
			</tr>
		</table>
		<input type="submit" value="删除">
	</form>
	
	
	<form action="insert.action">
		<table border="1">
			<tr>
				<td>用户</td>
				<td>密码</td>
			</tr>
			<tr>
				<td>账号：<input type="text" name="listuser[0].username" ></td>
				<td>密码：<input type="text" name="listuser[0].password" ></td>
			</tr>
			<tr>
				<td>账号：<input type="text" name="listuser[1].username" ></td>
				<td>密码：<input type="text" name="listuser[1].password" ></td>
			</tr>
			<tr>
				<td>账号：<input type="text" name="listuser[2].username" ></td>
				<td>密码：<input type="text" name="listuser[2].password" ></td>
			</tr>
		</table>
		<input type="submit" value="添加">
	</form>
	
</body>
</html>