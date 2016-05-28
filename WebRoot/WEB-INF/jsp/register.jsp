<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>REGISTER</title>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/image/title.png">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/css/register.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/ajax.js"></script>
<script type="text/javascript">
	function person_numCheck() {
		var person_num = document.getElementById("person_num");
		var url = "Person_numCheckServlet";
		var params = "person_num=" + person_num.value;
		sendRequest(url, params, 'POST', person_numResult);
	}
	function person_numResult() {
		if (xmlHttpRequest.readyState == 4) {
			if (xmlHttpRequest.status == 200) {
				var info = xmlHttpRequest.responseText;
				span1.innerHTML = info;
				span11.innerHTML = "";
			}
		}
	}
	function person_nameCheck() {
		var person_num = document.getElementById("person_name");
		var url = "Person_nameCheckServlet";
		var params = "person_name=" + person_name.value;
		sendRequest(url, params, 'POST', person_nameResult);
	}
	function person_nameResult() {
		if (xmlHttpRequest.readyState == 4) {
			if (xmlHttpRequest.status == 200) {
				var info = xmlHttpRequest.responseText;
				span2.innerHTML = info;
				span21.innerHTML = "";
			}
		}
	}
	function person_ageCheck() {
		var person_age = document.getElementById("person_age");
		var url = "Person_ageCheckServlet";
		var params = "person_age=" + person_age.value;
		sendRequest(url, params, 'POST', person_ageResult);
	}
	function person_ageResult() {
		if (xmlHttpRequest.readyState == 4) {
			if (xmlHttpRequest.status == 200) {
				var info = xmlHttpRequest.responseText;
				span3.innerHTML = info;
				span31.innerHTML = "";
			}
		}
	}
	function person_accountCheck() {
		var person_account = document.getElementById("person_account");
		var url = "Person_accountCheckServlet";
		var params = "person_account=" + person_account.value;
		sendRequest(url, params, 'POST', person_accountResult);
	}
	function person_accountResult() {
		if (xmlHttpRequest.readyState == 4) {
			if (xmlHttpRequest.status == 200) {
				var info = xmlHttpRequest.responseText;
				span4.innerHTML = info;
				span41.innerHTML = "";
			}
		}
	}
	function person_passwordCheck() {
		var person_password = document.getElementById("person_password");
		var url = "Person_passwordCheckServlet";
		var params = "person_password=" + person_password.value;
		sendRequest(url, params, 'POST', person_passwordResult);
	}
	function person_passwordResult() {
		if (xmlHttpRequest.readyState == 4) {
			if (xmlHttpRequest.status == 200) {
				var info = xmlHttpRequest.responseText;
				span5.innerHTML = info;
				span51.innerHTML = "";
			}
		}
	}
	function person_password2Check() {
		var person_password2 = document.getElementById("person_password2");
		var person_password = document.getElementById("person_password");
		var url = "Person_password2CheckServlet";
		var params = "person_password2=" + person_password2.value + "&person_password="+person_password.value;
		sendRequest(url, params, 'POST', person_password2Result);
	}
	function person_password2Result() {
		if (xmlHttpRequest.readyState == 4) {
			if (xmlHttpRequest.status == 200) {
				var info = xmlHttpRequest.responseText;
				span6.innerHTML = info;
				span61.innerHTML = "";
			}
		}
	}
	function person_powerCheck() {
		var person_power = document.getElementById("person_power");
		var url = "Person_powerCheckServlet";
		var params = "person_power=" + person_power.value;
		sendRequest(url, params, 'POST', person_powerResult);
	}
	function person_powerResult() {
		if (xmlHttpRequest.readyState == 4) {
			if (xmlHttpRequest.status == 200) {
				var info = xmlHttpRequest.responseText;
				span7.innerHTML = info;
				span71.innerHTML = "";
			}
		}
	}
	function person_cardCodeCheck() {
		var person_cardCode = document.getElementById("person_cardCode");
		var url = "Person_cardCodeCheckServlet";
		var params = "person_cardCode=" + person_cardCode.value;
		sendRequest(url, params, 'POST', person_cardCodeResult);
	}
	function person_cardCodeResult() {
		if (xmlHttpRequest.readyState == 4) {
			if (xmlHttpRequest.status == 200) {
				var info = xmlHttpRequest.responseText;
				span8.innerHTML = info;
				span81.innerHTML = "";
			}
		}
	}
</script>
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
				<input id="person_num" class="cinput" type="text" name="person_num"
					value="${param.person_num }" placeholder="NUM" onblur="person_numCheck()" required pattern="[0-9]{8}"/> 
				<span	class="csp" id="span1">${form.errors.person_num}</span> <span id="span11" class="cst">${form.tips.person_num}</span>
				<input id="person_name" class="cinput" type="text" name="person_name"
					value="${param.person_name }" placeholder="NAME" onblur="person_nameCheck()" required required pattern="^([\u4e00-\u9fa5]+)$"/> 
				<span	class="csp" id="span2">${form.errors.person_name}</span> <span id="span21" class="cst">${form.tips.person_name}</span>
				<input id="person_age" class="cinput" type="text" name="person_age"
					value="${param.person_age }" placeholder="AGE" onblur="person_ageCheck()" required required pattern="[0-9]{1,3}"//> 
				<span	class="csp" id="span3">${form.errors.person_age}</span> <span id="span31"class="cst">${form.tips.person_age}</span>
				<input id="person_account" class="cinput" type="text" name="person_account"
					value="${param.person_account }" placeholder="ACCOUNT" onblur="person_accountCheck()" required required pattern="[a-zA-Z]{3,8}"//>
				 <span class="csp" id="span4">${form.errors.person_account}</span> <span id="span41" class="cst">${form.tips.person_account}</span>
				<input id="person_password" class="cinput" type="password" name="person_password"
					value="${param.person_password }" placeholder="PASSWORD" onblur="person_passwordCheck()" required required pattern="[A-Za-z0-9]{6,}"//> 
				<span	class="csp" id="span5">${form.errors.person_password}</span> <span id="span51" class="cst">${form.tips.person_password}</span>
				<input id="person_password2" class="cinput" type="password" name="person_password2"
					value="${param.person_password2 }" placeholder="PASSWORD AGAIN" onblur="person_password2Check()" required required pattern="[0-9]{8}"//> 
				<span id="span6" class="csp">${form.errors.person_password2}</span>
				<span id="span61" class="cst">${form.tips.person_password2}</span> 
				<input id="person_power" class="cinput" type="text" name="person_power"
					value="${param.person_power }" placeholder="POWER" onblur="person_powerCheck()" required required pattern="[0-9]{1}"//> 
				<span	class="csp" id="span7">${form.errors.person_power}</span> <span id="span71" class="cst">${form.tips.person_power}</span>
				<input id="person_cardCode" class="cinput" type="text" name="person_cardCode"
					value="${param.person_cardCode }" placeholder="CARDCODE" onblur="person_cardCodeCheck()" required required pattern="[0-9]{9}"//> 
				<span	class="csp" id="span8">${form.errors.person_cardCode}</span> <span id="span81" class="cst">${form.tips.person_cardCode}</span>
				<p>
					I agree to the <a href="#">IntelligentClassroom Terms</a> and <a
						href="#">Privacy</a>.
				</p>
				<button class="cbut" type="submit" name="register">Create
					account</button>
			</form>
		</div>
		<div id="other">
			<a href="${pageContext.request.contextPath }/servlet/LoginUIServlet">Sign
				in</a>&nbsp; <a href="#">Help</a>
		</div>
	</div>
</body>
</html>
