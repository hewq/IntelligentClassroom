<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="cn.it.utils.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/room.css" />
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/image/title.png">
<script src="${pageContext.request.contextPath }/js/indexlogout.js"
	type="text/javascript"></script>
<title>ROOM</title>
</head>

<body>
	<div id="id">
		<div id="id1">
			<div id="name">智能教室</div>
		</div>
		<div id="id2">
			<form
				action="${pageContext.request.contextPath }/servlet/SelectLogoutServlet">
				<input type="text" name="select" placeholder="输入房间号" /> <span>${error
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
						onMouseOver="show()">房间</a>
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
			<p>房间总览</p>
		</div>
		<div id="id5">
			<table class="table1">
				<tr id="tr1">
					<td colspan="11">
						<button class="button"
							onclick="ALLforward()">ALL</button>
						<button class="button"
							onclick="F1forward()">F1</button>
						<button class="button"
							onclick="F2forward()">F2</button>
						<button class="button"
							onclick="F3forward()">F3</button>
						<button class="button"
							onclick="F4forward()">F4</button>
						<button class="button"
							onclick="F5forward()">F5</button>
						<button class="button"
							onclick="F6forward()">F6</button>
					</td>
				</tr>
				<tr id="tr2">
					<th>房间</th>
					<th>大楼</th>
					<th>楼层</th>
					<th>面积</th>
					<th>灯数</th>
					<th>桌子数</th>
					<th>容纳人数</th>
					<th>类型</th>
					<th>负责人</th>
					<th>电话</th>
					<th>备注</th>
				</tr>
			</table>
		</div>
		<div id="id6">
			<table class="table2">
				<%
					Connection conn = null; //声明连接
					ResultSet rs = null; //声明结果集
					try {
						//定义SQL语句，按照用户名排序
						String sql = "select * from room where room_floor="+6+" order by room_num";
						conn = DBUtil.getConn(); //通过工具类获取连接
						rs = DBUtil.executeQuery(conn, sql); //执行sql并返回结果
						while (rs.next()) { //遍历结果集
				%>
				<tr>
					<td class="td1">
						<%-- 打印房间号 --%> <a class="a_room"
						href="${pageContext.request.contextPath }/servlet/InRoomLogoutServlet?room_num=<%=rs.getString("room_num")%>&room_building=<%=rs.getString("room_building")%>"><%=rs.getString("room_num")%></a>
					</td>
					<td class="td1"><%=rs.getString("room_building")%></td>
					<td class="td1"><%=rs.getString("room_floor")%></td>
					<td class="td1"><%=rs.getString("room_areaX")%>*<%=rs.getString("room_areaX")%>
					</td>
					<td class="td1"><%=rs.getString("room_lights")%></td>
					<td class="td1"><%=rs.getString("room_desks")%></td>
					<td class="td1"><%=rs.getString("room_peoples")%></td>
					<td class="td1"><%=rs.getString("room_type")%></td>
					<td class="td1"><%=rs.getString("room_principal")%></td>
					<td class="td1"><%=rs.getString("room_tel")%></td>
					<td class="td1"><%=rs.getString("room_remark")%></td>
				</tr>
				<%
					}
					} catch (SQLException e) {
						e.printStackTrace();
					} finally {
						DBUtil.close(conn, null, rs); //关闭连接和结果集
					}
				%>
			</table>
		</div>
	</div>
</body>
</html>
