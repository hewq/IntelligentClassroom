<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>智慧教室管理系统</title>

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/css/login.css" />

</head>

<body>

	<div id="container">

		<div id="toptitle">

			<div id="name">方友ERP 1.0.0-ALPHA</div>
			<div id="welcome">欢迎您!</div>

		</div>

		<div id="logintext">

			<div id="login">登录</div>

		</div>

		<div id="form">

			<form action="${pageContext.request.contextPath }/servlet/LoginServlet" method="post">
				<div id="input">
					account：<input type="text" name="account" /><br> 
					password：<input	type="password" name="password" /><br>
				</div>

				<div id="btn">
					<input type="submit" value="login" /> 
				</div>
			</form>

		</div>

	</div>

</body>
</html>
