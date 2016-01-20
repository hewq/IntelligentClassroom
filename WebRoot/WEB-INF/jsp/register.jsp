<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>REGISTER</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath }/image/title.png">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/css/register.css" />
</head>

<body>
	<div id="container">
		<div id="logo"></div>
		<div id="word">
			<p>Sign up</p>
		</div>
		<div id="text">
			<form
				action="${pageContext.request.contextPath }/servlet/RegisterServlet"
				method="post">
				<input class="cinput" type="text" name="person_num" value="NUM" />
				<span class="csp">${form.errors.person_num}</span>
				<input class="cinput"type="text" name="person_name" value="NAME" /> 
				<span class="csp">${form.errors.person_name}</span>
				<input class="cinput" type="text" name="person_age" value="AGE" />
				<span class="csp">${form.errors.person_age}</span> 
				<input class="cinput" type="text" name="person_account" value="ACCOUNT" />
				<span class="csp">${form.errors.person_account}</span>
				<input class="cinput" type="text" name="person_password" value="PASSWORD" /> 
				<span class="csp">${form.errors.person_password}</span>
				<input class="cinput" type="text" name="person_password2" value="PASSWORD AGAIN" />
				<span class="csp">${form.errors.person_password2}</span> 
				<input class="cinput" type="text" name="person_power" value="POWER" /> 
				<span class="csp">${form.errors.person_power}</span>
				<input class="cinput" type="text" name="person_cardCode" value="CARDCODE" />
				<span class="csp">${form.errors.person_cardCode}</span>
				<p>
					I agree to the <a href="#">IntelligentClassroom Terms</a> and <a
						href="#">Privacy</a>.
				</p>
				<button class="cbut" type="submit" name="register">Create
					account</button>
			</form>
		</div>
		<div id="other">
			<a href="${pageContext.request.contextPath }/servlet/LoginUIServlet">Sign in</a>&nbsp; <a href="#">Help</a>
		</div>
	</div>
</body>
</html>
