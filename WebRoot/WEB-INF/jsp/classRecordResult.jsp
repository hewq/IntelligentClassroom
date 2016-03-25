<%@page import="java.sql.ResultSet"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="cn.it.dao.IntelligentDao"%>
<%@ page import="cn.it.dao.impl.IntelligentDaoImpl"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/classrecordresult.css" />
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/image/title.png">
<script src="${pageContext.request.contextPath }/js/manage_index.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js//Calendar4.js"
	type="text/javascript"></script>
<title>智能教室管理系统</title>
</head>

<body>

	<div id="id">
		<div id="id1">
			<div id="name">智能教室</div>
		</div>
		<div id="id2">
			<form
				action="${pageContext.request.contextPath }/servlet/SelectServlet">
				<input type="text" name="select" value="输入房间号" /> <span>${error
					}</span>
			</form>
			<select onchange="window.location=this.value;" name="select">
				<option value="1">游客</option>
				<option
					value="${pageContext.request.contextPath }/servlet/LoginUIServlet">登陆</option>
				<option
					value="${pageContext.request.contextPath }/servlet/RegisterUIServlet">注册</option>
			</select>
		</div>
		<div id="id3">
			<dl class="list">
				<dt class="icon1">
					<a
						href="${pageContext.request.contextPath }/servlet/IndexUIServlet">总览</a>
				</dt>
				<dt class="icon2">
					<a href="${pageContext.request.contextPath }/servlet/RoomUIServlet"
						onmouseover="show()">房间</a>
				</dt>
				<dd class="menv03">
					<div class="sideleft">
						<a class="a"
							href="${pageContext.request.contextPath }/servlet/Building_1UIServlet">1号楼</a><br />
						<a class="a"
							href="${pageContext.request.contextPath }/servlet/Building_2UIServlet">2号楼</a><br />
						<a class="a"
							href="${pageContext.request.contextPath }/servlet/Building_3UIServlet">3号楼</a><br />
						<a class="a"
							href="${pageContext.request.contextPath }/servlet/Building_4UIServlet">4号楼</a><br />
						<a class="a"
							href="${pageContext.request.contextPath }/servlet/Building_5UIServlet">5号楼</a><br />
					</div>
				</dd>
				<dt class="icon3" onmouseover="showid46()">
					<a href="#">人员</a>
				</dt>
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
					<tr>
						<td><a
							href="${pageContext.request.contextPath }/servlet/ClassRecordUIServlet">上课记录</a>
						</td>
					</tr>
					<tr>
						<td><a
							href="${pageContext.request.contextPath }/servlet/CheckPeopleUIServlet">人员查看</a>
						</td>
					</tr>
					<tr>
						<td><a
							href="${pageContext.request.contextPath }/servlet/AddPeopleUIServlet">人员添加</a>
						</td>
					</tr>
				</table>
			</div>
			<p>上课记录</p>
			<div id="id40"></div>
			<%
				Date current = new Date();
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
				String currentTime = dateFormat.format(current);
			%>
			<div id="id41">
				<form
					action="${pageContext.request.contextPath }/servlet/SelectClassRecordServlet"
					method="post">
					<span id="start">开始时间</span> <input type="text"
						value=<%=currentTime%> id="startinput" name="startinput"
						onclick="MyCalendar.SetDate(this,document.getElementById('startinput'))" />
					<span id="end">结束时间</span> <input type="text"
						value=<%=currentTime%> id="endinput" name="endinput"
						onclick="MyCalendar.SetDate(this,document.getElementById('endinput'))" />
					<span id="room">房间号</span> <select name="classNum" id="classNum">
						<%
							IntelligentDao dao = new IntelligentDaoImpl();
							String sql = "select room_num from room order by room_num";
							ResultSet rs = dao.select(sql);
							while (rs.next()) {
						%>
						<option><%=rs.getString("room_num")%></option>
						<%
							}
						%>
					</select>
					<button type="submit">查询</button>
				</form>
			</div>
			<div id="id42">
				<table id="resultTitle">
					<tr>
						<td>房间</td>
						<td>学号</td>
						<td>姓名</td>
						<td>时间</td>
					</tr>
				</table>
			</div>
			<div id="id43">
				<table id="resultContent">
					<%
							String sql1 = "select person_name,person_num,class_record_time from person,class_record "+
							"where class_record_student=person_id and class_record_time in "+
							"(select class_record_time from class_record where class_record_time between '"
							+request.getParameter("startTime")+"' and '"+request.getParameter("endTime")+
							"')and class_record_room=(select room_id from room where room_num='"
							+request.getParameter("room_num")+"')";
							
							ResultSet rs1 = dao.select(sql1);
							while(rs1.next()){
					%>		
							
					<tr>
						<td>${room_num }</td>
						<td><%=rs1.getString("person_num") %></td>
						<td><%=rs1.getString("person_name") %></td>
						<td><%=rs1.getString("class_record_time") %></td>
					</tr>
					<%
					}		
							dao.close();		
					%>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
