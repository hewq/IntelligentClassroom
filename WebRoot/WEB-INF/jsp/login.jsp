<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>login</title>

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/css/login.css" />
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/image/title.png">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/ajax.js"></script>
	<script type="text/javascript">
	function accountcheck(){
		var account = document.getElementById("id0220");
		var url="AccountCheckServlet";
		var params="account="+account.value;
		sendRequest(url,params,'POST',showresult_account);
	}
	function passwdcheck(){
		var account = document.getElementById("id0220");
		var password = document.getElementById("id0221");
		var url="PasswdCheckServlet";
		var params="account="+account.value+"&userpwd="+password.value;
		sendRequest(url,params,'POST',showresult_passwd);
	}
	function showresult_account(){
		if(xmlHttpRequest.readyState ==4){
				if(xmlHttpRequest.status == 200){
					var info = xmlHttpRequest.responseText;
					accounttips.innerHTML = info;//将info插入到html的result标签中（result表示html标签中的一个id）
				}
			}
	}
	function showresult_passwd(){
		if(xmlHttpRequest.readyState ==4){
				if(xmlHttpRequest.status == 200){
					var info = xmlHttpRequest.responseText;
					passwdtips.innerHTML = info;//将info插入到html的result标签中（result表示html标签中的一个id）
				}
			}
	}
</script>
</head>
<body>
	<div id="id0">
		<div id="id00"></div>
		<div id="id01"></div>
		<div id="id02">
			<div id="id020"></div>
			<div id="id021">Sign in to your account</div>
			<div id="form">
				<form
					action="${pageContext.request.contextPath }/servlet/LoginServlet"
					method="post">
					<div id="id022">
						<input id="id0220" class="cinput" type="text" name="account"
							placeholder="account" onblur="accountcheck()"/>
						<div id="accounttips"></div>
						<input id="id0221" class="cinput" type="password" name="password"
							placeholder="password" onblur="passwdcheck()"/>
						<div id="passwdtips">${message }</div>
					</div>
					<div id="id023">
						<button type="submit" name="signin" value="Sign In">Sign In</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
