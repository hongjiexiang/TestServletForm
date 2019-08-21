<%--
  Created by IntelliJ IDEA.
  User: hjx
  Date: 2019/8/21
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>用户注册页面</title>
</head>
<link rel="stylesheet" href="css/list.css" type="text/css">
<script type="text/javascript" src="js/Calendar3.js"></script>
<body>
<h1 align="center">请输入您的信息</h1>
<hr>
<br>
<form name="regForm" action="servlet/RegServlet" method="post">
	<table>
		<tr>
			<td>用户名：</td>
			<td><input type="text" name="username" value=""/></td>
		</tr>
		<tr>
			<td>密码：</td>
			<td><input type="password" name="password" value=""/></td>
		</tr>
		<tr>
			<td>确认密码：</td>
			<td><input type="password" name="confirmpassword" value=""/></td>
		</tr>
		<tr>
			<td>电子邮箱：</td>
			<td><input type="text" name="email" value=""/></td>
		</tr>
		<tr>
			<td>性别：</td>
			<td>
				<input type="radio" name="sex" value="Male" checked="checked"/>男
				<input type="radio" name="sex" value="Female"/>女
			</td>

		</tr>
		<tr>
			<td>出生日期：</td>
			<td><input type="text" name="birthday" onclick="new Calendar().show(this);"readonly="readonly"/></td>
		</tr>
		<tr>
			<td>爱好：</td>
			<td><input type="checkbox" name="fav" value="nba"/>NBA
			<input type="checkbox" name="fav" value="music"/>音乐
			<input type="checkbox" name="fav" value="movie"/>电影
			<input type="checkbox" name="fav" value="internet"/>上网
			</td>
		</tr>
		<tr>
			<td>自我介绍：</td>
			<td><input id="intro" type="text" name="introduce" value=""/></td>
		</tr>
		<tr>
			<td>接受协议：</td>
			<td><input type="checkbox" name="isAccept" value="true"/>是否接受霸王条款</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" name="" value="注册"/>
				<input type="reset" name="" value="取消"/>
			</td>
		</tr>
	</table>
</form>
</body>
</html>
