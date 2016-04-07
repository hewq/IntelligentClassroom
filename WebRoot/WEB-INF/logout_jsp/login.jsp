<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>login</title>

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/css/login.css" />
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/image/title.png">
</head>
<body>
	<div id="id0">
		<div id="id00">
		</div>
		<div id="id01">
			<p>welcome to Intelligent-Classroom</p>
		</div>
		<div id="id02">
			<div id="id020">
			
			</div>
			<div id="id021">
				Sign in to your account
			</div>
			<div id="form">
				<form action="${pageContext.request.contextPath }/servlet/LoginServlet" method="post">
					<div id="id022">
						<input id="id0220" class="cinput" type="text" name="account" placeholder="account" />
						<input id="id0221" class="cinput" type="password" name="password" placeholder="password"  />
					</div>
					<div id="id023">
						<button type="submit" name="signin" value="Sign In">Sign In</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<body>
</html>
