<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="cn.it.utils.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/room.css" />
<script src="${pageContext.request.contextPath }/js/index.js"
	type="text/javascript"></script>
<title>ROOM</title>
</head>

<body>
	<div id="id">
		<div id="id1">
			<div id="name">智能教室</div>
		</div>
		<div id="id2">
			<form>
				<input />
			</form>
			<select>
				<option>游客</option>
				<option>登陆</option>
				<option>注册</option>
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
						onMouseOver="show()">房间</a>
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
			</dl>
		</div>
		<div id="id4">
			<p>房间总览</p>
		</div>
		<div id="id5">
			<table class="table1">
				<tr id="tr1">
					<td colspan="11">
						<button class="button" onclick="B3ALLforward()">ALL</button>
						<button class="button" onclick="B3F1forward()">F1</button>
						<button class="button" onclick="B3F2forward()">F2</button>
						<button class="button" onclick="B3F3forward()">F3</button>
						<button class="button" onclick="B3F4forward()">F4</button>
						<button class="button" onclick="B3F5forward()">F5</button>
						<button class="button" onclick="B3F6forward()">F6</button>
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
						String sql = "select * from room where room_floor=" + 5
								+ " and room_building=" + 3 + " order by room_num";
						conn = DBUtil.getConn(); //通过工具类获取连接
						rs = DBUtil.executeQuery(conn, sql); //执行sql并返回结果
						while (rs.next()) { //遍历结果集
				%>
				<tr>
					<td class="td1">
						<%-- 打印房间号 --%> <%=rs.getString("room_num")%></td>
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
