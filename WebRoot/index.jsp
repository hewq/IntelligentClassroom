<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="cn.it.socket.*"%>
<%
	Server server = new Server();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/index.css" />
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/image/title.png">
<script src="${pageContext.request.contextPath }/js/indexlogout.js"
	type="text/javascript"></script>
<title>智能教室管理系统</title>
</head>

<body>

	<div id="id">
		<div id="id1">
			<div id="name">智能教室</div>
		</div>
		<div id="id2">
			<a id="ai" href="${pageContext.request.contextPath }/servlet/ResponseDemoServlet">demo</a>
			<form
				action="${pageContext.request.contextPath }/servlet/SelectLogoutServlet">
				<input type="text" name="select" value="输入房间号" /> <span>${error
					}</span>
			</form>
			<a id= "login" href="${pageContext.request.contextPath }/servlet/LoginUIServlet">log in</a>
		</div>
		<div id="id3">
			<dl class="list">
				<dt class="icon1">
					<a
						href="${pageContext.request.contextPath }/servlet/IndexUILogoutServlet">总览</a>
				</dt>
				<dt class="icon2">
					<a href="${pageContext.request.contextPath }/servlet/RoomUILogoutServlet"
						onMouseOver="show()" onMouseOut="hidden()">房间</a>
				</dt>
				<dd class="menv03">
					<div class="sideleft">
						<a class="a"
							href="${pageContext.request.contextPath }/servlet/Building_1UILogoutServlet">1号楼</a><br />
						<a class="a"
							href="${pageContext.request.contextPath }/servlet/Building_2UILogoutServlet">2号楼</a><br />
						<a class="a"
							href="${pageContext.request.contextPath }/servlet/Building_3UILogoutServlet">3号楼</a><br />
						<a class="a"
							href="${pageContext.request.contextPath }/servlet/Building_4UILogoutServlet">4号楼</a><br />
						<a class="a"
							href="${pageContext.request.contextPath }/servlet/Building_5UILogoutServlet">5号楼</a><br />
					</div>
				</dd>
			</dl>
		</div>
		<div id="id4">
			<img src="image/building1S.png" id="id40" onclick="B1forward()" target="_blank"/>
			<img src="image/building2S.png" id="id41" onclick="B2forward()" target="_blank"/>
			<img src="image/building3S.png" id="id42" onclick="B3forward()" target="_blank"/>
			<img src="image/building4S.png" id="id43" onclick="B4forward()" target="_blank"/>
			<img src="image/building5S.png" id="id44" onclick="B5forward()" target="_blank"/>
			<img src="image/logo8.png" id="id45" />
		</div>
	</div>
</body>
</html>
