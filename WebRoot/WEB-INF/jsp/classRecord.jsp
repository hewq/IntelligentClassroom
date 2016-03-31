<%@page import="java.sql.ResultSet"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="cn.it.dao.IntelligentDao" %>
<%@ page import="cn.it.dao.impl.IntelligentDaoImpl" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/classrecord.css" />
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/image/title.png">
<script src="${pageContext.request.contextPath }/js/manage_index.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js//Calendar4.js" type="text/javascript"></script>
<title>智能教室管理系统</title>
</head>

<body>

	<div id="id">
		<div id="id1">
			<div id="name">
				智能教室
			</div>
		</div>
		<div id="id2">
			<form
				action="${pageContext.request.contextPath }/servlet/SelectServlet">
				<input type="text" name="select" value="输入房间号" /> <span>${error
					}</span>
			</form>
			<a id= "switch" href="${pageContext.request.contextPath }/servlet/SwitchAccountServlet">switch</a>
			<a id= "logout" href="${pageContext.request.contextPath }/servlet/LogoutServlet">exit</a>
		</div>
		<div id="id3">
			<dl class="list">
				<dt class="icon1">
					<a href="${pageContext.request.contextPath }/servlet/IndexUIServlet">总览</a>
				</dt>
				<dt class="icon2">
					<a href="${pageContext.request.contextPath }/servlet/RoomUIServlet"
						onmouseover="show()">房间</a>
				</dt>
				<dd class="menv03">
					<div class="sideleft">
						<a class="a" href="${pageContext.request.contextPath }/servlet/Building_1UIServlet">1号楼</a><br/>
						<a class="a" href="${pageContext.request.contextPath }/servlet/Building_2UIServlet">2号楼</a><br/>
						<a class="a" href="${pageContext.request.contextPath }/servlet/Building_3UIServlet">3号楼</a><br/>
						<a class="a" href="${pageContext.request.contextPath }/servlet/Building_4UIServlet">4号楼</a><br/>
						<a class="a" href="${pageContext.request.contextPath }/servlet/Building_5UIServlet">5号楼</a><br/>			
					</div>
				</dd>
				<dt class="icon3">
					<a href="#" onclick="showperson()">人员</a>
				</dt>
				<dd id="renyuan" class="close">
					<div >
						<a class="b" href="${pageContext.request.contextPath }/servlet/ClassRecordUIServlet">上课记录</a>
						<a class="b" href="${pageContext.request.contextPath }/servlet/CheckPeopleUIServlet">人员查看</a>
						<a class="b" href="${pageContext.request.contextPath }/servlet/AddPeopleUIServlet">人员添加</a>
					</div>
				</dd>
				<dt class="icon4">
					<a href="#">房间设置</a>
				</dt>
				<dt class="icon5">
					<a href="#">大楼设置</a>
				</dt>
			</dl>
		</div>
		
		<div id="id4">
			<div id="id46" class="close">
					<table>
							<tr><td><a href="${pageContext.request.contextPath }/servlet/ClassRecordUIServlet">上课记录</a></td></tr>
							<tr><td><a href="${pageContext.request.contextPath }/servlet/CheckPeopleUIServlet">人员查看</a></td></tr>
							<tr><td><a href="${pageContext.request.contextPath }/servlet/AddPeopleUIServlet">人员添加</a></td></tr>
					</table>
				</div>
			<p>上课记录</p>
			<div id="id40">
				
			</div>
			<%
				Date current = new Date();
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
				String currentTime = dateFormat.format(current); 
			 %>
			<div id="id41">
				<form action="${pageContext.request.contextPath }/servlet/SelectClassRecordServlet" method="post">
					<span id="start" >开始时间</span>
					<input type="text" value=<%=currentTime %> id="startinput" name="startinput" onclick="MyCalendar.SetDate(this,document.getElementById('startinput'))"/>
					<span id="end">结束时间</span>
					<input type="text" value=<%=currentTime %> id="endinput" name="endinput" onclick="MyCalendar.SetDate(this,document.getElementById('endinput'))"/>
					<span id="room">房间号</span>
					<select name="classNum" id="classNum">
						<%
							IntelligentDao dao = new IntelligentDaoImpl();
							String sql = "select room_num from room order by room_num";
							ResultSet rs = dao.select(sql);
							while(rs.next()){
						%>
								<option><%=rs.getString("room_num")%></option>
						<%
							}
							dao.close();
						 %>
					</select>
					<button type="submit">查询</button>
				</form>
			</div>
			<div id="id42">
				
			</div>
		</div>
	</div>
</body>
</html>
