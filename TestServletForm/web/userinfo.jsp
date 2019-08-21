<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: hjx
  Date: 2019/8/21
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="css/list.css" type="text/css">
<html>
<head>
	<title>注册信息页面</title>
</head>
<body>
<h1 align="center">用户信息</h1>
<hr>
<br>
<center>
	<jsp:useBean id="regUser" class="eneity.Users" scope="session"></jsp:useBean>
<form>
	<table width="600" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<td class="title">用户名：</td>
			<td class="content">&nbsp;<jsp:getProperty name="regUser" property="username"/></td>
		</tr>
		<tr>
			<td class="title">密码：</td>
			<td class="content">&nbsp;<jsp:getProperty name="regUser" property="password"/></td>
		</tr>
		<tr>
			<td class="title">性别：</td>
			<td class="content">&nbsp;<jsp:getProperty name="regUser" property="sex"/></td>
		</tr>
		<tr>
			<td class="title">E-mail：</td>
			<td class="content">&nbsp;<jsp:getProperty name="regUser" property="email"/></td>
		</tr>
		<tr>
			<td class="title">出生日期：</td>
			<td class="content">&nbsp;
			<%
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日");
				String date=sdf.format(regUser.getBirthday());
			%>
				<%=date%>
			</td>
		</tr>
		<tr>
			<td class="title">爱好：</td>
			<td class="content">&nbsp;
			<%
				String[] fav=regUser.getFav();
				for (String f : fav) {
			%>
				<%=f%> &nbsp;&nbsp;
				<%
					}
				%>
			</td>
		</tr>
		<tr>
			<td class="title">自我介绍：</td>
			<td class="content">&nbsp;<jsp:getProperty name="regUser" property="introduce"/></td>
		</tr>
		<tr>
			<td class="title">是否接受协议：</td>
			<td class="content">&nbsp;<jsp:getProperty name="regUser" property="flag"/></td>
		</tr>
	</table>
</form>
</center>
</body>
</html>
