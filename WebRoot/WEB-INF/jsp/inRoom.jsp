<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="cn.it.utils.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/inRoom.css" />
<script src="${pageContext.request.contextPath }/js/index.js"
	type="text/javascript"></script>
<title>智慧教室管理系统</title>
</head>

<body>
	<div id="id">
		<div id="id1">
			<div id="name">智能教室</div>
		</div>
		<div id="id2">
			<form action="${pageContext.request.contextPath }/servlet/SelectServlet">
				<input name="select" value="输入房间号"/>
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
			<p>【${room_building }】号大楼【${room_num }】房间情况</p>
		</div>
		<div id="id5">
			<div id="id51">
				<form id="id51form1" action="${pageContext.request.contextPath }/servlet/AllOnServlet" id="formallon">
					<button id="id51button1" onclick="AllOn()" name=room_num value="${room_num }">ALL ON</button>
				</form>
				<form id="id51form2" action="${pageContext.request.contextPath }/servlet/AllOffServlet" id="formallon">
					<button id="id51button2" onclick="AllOff()" name=room_num value="${room_num }">ALL OFF</button>
				</form>
			</div>
			<table class="inRoomTable1">
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>讲</td>
					<td>台</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
		</div>
		<div id="id6">
			<div id="id61">
				<span>属性</span>
			</div>
			<div id="id62">
				<table class="inRoomTable2">
					<tr>
						<td>编号</td>
						<td>位置</td>
						<td>灯光范围</td>
						<td>状态</td>
						<td>设置</td>
					</tr>
				</table>
			</div>
			<div id="id63">
				<table class="inRoomTable3">
					<%
						Connection conn = null; //声明连接
						ResultSet rs = null; //声明结果集
						try {
							//定义SQL语句，按照用户名排序
							String sql = "select * from lights where lights_room = (select room_id from room where room_num="
									+ "'"+request.getAttribute("room_num")+"'"
									+ ")order by lights_num4room";
							conn = DBUtil.getConn(); //通过工具类获取连接
							rs = DBUtil.executeQuery(conn, sql); //执行sql并返回结果
							while (rs.next()) { //遍历结果集
					%>
					<tr>
						<td class="td1"><%=rs.getString("lights_num4room")%></td>
						<td class="td1"><%=rs.getString("lights_location")%></td>
						<td class="td1"><%=rs.getString("lights_range")%></td>
						<td class="td1"><%=rs.getString("lights_state")%></td>
						<td class="td1"><button>setting</button>
						</td>
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
	</div>
</body>
</html>
