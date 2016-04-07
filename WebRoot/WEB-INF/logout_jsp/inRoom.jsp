<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="cn.it.utils.*"%>
<%@ page import="java.lang.String.*"%>




<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/inRoomLogout.css" />
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/image/title.png">
<script src="${pageContext.request.contextPath }/js/indexlogout.js"
	type="text/javascript"></script>
<title>智慧教室管理系统</title>

</head>
<body onload="showLight()">
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
			<p>【${room_building }】号大楼【${room_num }】房间情况</p>
		</div>
		<div id="id5">
			<div id="id51">
					<button id="id51button1" name=room_num value="${room_num }"></button>
					<button id="id51button2" name=room_num value="${room_num }"></button>
				<button id="id51button3" name="attribute"
					onclick="showAttribute()"></button>
			</div>
				<table class="inRoomTable1">
					<tr>
						<td><button class="close" name="lightLocation"
								value="1,1:${room_num }" onMouseOver="OnorOff()"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="2,1:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="3,1:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="4,1:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="5,1:${room_num }"></button>讲</td>
						<td><button class="close" name="lightLocation"
								value="6,1:${room_num }"></button>台</td>
						<td><button class="close" name="lightLocation"
								value="7,1:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="8,1:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="9,1:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="10,1:${room_num }"></button>
						</td>
					</tr>
					<tr>
						<td><button class="close" name="lightLocation"
								value="1,2:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="2,2:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="3,2:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="4,2:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="5,2:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="6,2:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="7,2:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="8,2:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="9,2:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="10,2:${room_num }"></button>
						</td>
					</tr>
					<tr>
						<td><button class="close" name="lightLocation"
								value="1,3:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="2,3:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="3,3:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="4,3:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="5,3:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="6,3:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="7,3:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="8,3:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="9,3:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="10,3:${room_num }"></button>
						</td>
					</tr>
					<tr>
						<td><button class="close" name="lightLocation"
								value="1,4:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="2,4:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="3,4:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="4,4:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="5,4:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="6,4:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="7,4:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="8,4:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="9,4:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="10,4:${room_num }"></button>
						</td>
					</tr>
					<tr>
						<td><button class="close" name="lightLocation"
								value="1,5:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="2,5:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="3,5:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="4,5:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="5,5:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="6,5:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="7,5:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="8,5:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="9,5:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="10,5:${room_num }"></button>
						</td>
					</tr>
					<tr>
						<td><button class="close" name="lightLocation"
								value="1,6:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="2,6:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="3,6:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="4,6:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="5,6:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="6,6:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="7,6:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="8,6:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="9,6:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="10,6:${room_num }"></button>
						</td>
					</tr>
					<tr>
						<td><button class="close" name="lightLocation"
								value="1,7:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="2,7:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="3,7:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="4,7:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="5,7:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="6,7:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="7,7:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="8,7:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="9,7:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="10,7:${room_num }"></button>
						</td>
					</tr>
					<tr>
						<td><button class="close" name="lightLocation"
								value="1,8:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="2,8:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="3,8:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="4,8:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="5,8:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="6,8:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="7,8:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="8,8:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="9,8:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="10,8:${room_num }"></button>
						</td>
					</tr>
					<tr>
						<td><button class="close" name="lightLocation"
								value="1,9:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="2,9:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="3,9:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="4,9:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="5,9:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="6,9:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="7,9:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="8,9:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="9,9:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="10,9:${room_num }"></button>
						</td>
					</tr>
					<tr>
						<td><button class="close" name="lightLocation"
								value="1,10:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="2,10:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="3,10:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="4,10:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="5,10:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="6,10:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="7,10:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="8,10:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="9,10:${room_num }"></button>
						</td>
						<td><button class="close" name="lightLocation"
								value="10,10:${room_num }"></button>
						</td>
					</tr>
				</table>
		</div>
		<div id="id6" class="id6hidden">
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
															String tr = "";
															String td = "";
															int i = 0;
															int j = 0;
															String lights_state = "";
															List<String> list = new ArrayList<String>();
															String tr0="0",tr1="0",tr2="0",tr3="0",tr4="0",tr5="0",tr6="0",tr7="0",tr8="0",tr9="0",tr10="0",tr11="0",tr12="0",tr13="0",tr14="0";
															String td0="0",td1="0",td2="0",td3="0",td4="0",td5="0",td6="0",td7="0",td8="0",td9="0",td10="0",td11="0",td12="0",td13="0",td14="0";
															String l0="0",l1="0",l2="0",l3="0",l4="0",l5="0",l6="0",l7="0",l8="0",l9="0",l10="0",l11="0",l12="0",l13="0",l14="0";
															try {
																//定义SQL语句，按照用户名排序
																String sql = "select * from lights where lights_room = (select room_id from room where room_num="
																		+ "'"
																		+ request.getAttribute("room_num")
																		+ "'"
																		+ ")order by lights_num4room";
																conn = DBUtil.getConn(); //通过工具类获取连接
																rs = DBUtil.executeQuery(conn, sql); //执行sql并返回结果
																while (rs.next()) { //遍历结果集
																	String str = rs.getString("lights_location");
																	lights_state = rs.getString("lights_state");
																	if (str.matches("[0-9],[0-9]")) {
																		String[] array = str.split(",");
																		switch (i) {
																			case 0 :
																				 tr0 = array[1];
																				 td0 = array[0];
																				 l0 = lights_state;
																				break;
																			case 1 :
																				 tr1 = array[1];
																				 td1 = array[0];
																				 l1 = lights_state;
																				break;
																			case 2 :
																				 tr2 = array[1];
																				 td2 = array[0];
																				 l2 = lights_state;
																				break;
																			case 3 :
																				 tr3 = array[1];
																				 td3 = array[0];
																				 l3 = lights_state;
																				break;
																			case 4 :
																				 tr4 = array[1];
																				 td4 = array[0];
																				 l4 = lights_state;
																				break;
																			case 5 :
																				 tr5 = array[1];
																				 td5 = array[0];
																				 l5 = lights_state;
																				break;
																			case 6 :
																				 tr6 = array[1];
																				 td6 = array[0];
																				 l6 = lights_state;
																				break;
																			case 7 :
																				 tr7 = array[1];
																				 td7 = array[0];
																				 l7 = lights_state;
																				break;
																			case 8 :
																				 tr8 = array[1];
																				 td8 = array[0];
																				 l8 = lights_state;
																				break;
																			case 9 :
																				 tr9 = array[1];
																				 td9 = array[0];
																				 l9 = lights_state;
																				break;
																			case 10 :
																				 tr10 = array[1];
																				 td10 = array[0];
																				 l10 = lights_state;
																				break;
																			case 11 :
																				 tr11 = array[1];
																				 td11 = array[0];
																				 l11 = lights_state;
																				break;
																			case 12 :
																				 tr12 = array[1];
																				 td12 = array[0];
																				 l12 = lights_state;
																				break;
																			case 13 :
																				 tr13 = array[1];
																				 td13 = array[0];
																				 l13 = lights_state;
																				break;
																			case 14 :
																				 tr14 = array[1];
																				 td14 = array[0];
																				 l14 = lights_state;
																				break;
																			default:
																				break;
																		}
																		list.add("flag");
																		i++;
																	}
																	switch(j){
																		case 0:
																	
					%>
					<tr>
						<td class="td1"><%=rs.getString("lights_num4room")%></td>
						<td class="td1"><%=rs.getString("lights_location")%></td>
						<td class="td1"><%=rs.getString("lights_range")%></td>
						<td class="td1"><button id="b0" class="undetermined"></button></td>
						<td class="td1"><button class="b2"></button></td>
					</tr>
					<%
																		break;
																	case 1:
																	
					%>
					<tr>
						<td class="td1"><%=rs.getString("lights_num4room")%></td>
						<td class="td1"><%=rs.getString("lights_location")%></td>
						<td class="td1"><%=rs.getString("lights_range")%></td>
						<td class="td1"><button id="b1" class="undetermined"></button></td>
						<td class="td1"><button class="b2"></button></td>
					</tr>
					<%
																		break;
																	case 2:
																	
					%>
					<tr>
						<td class="td1"><%=rs.getString("lights_num4room")%></td>
						<td class="td1"><%=rs.getString("lights_location")%></td>
						<td class="td1"><%=rs.getString("lights_range")%></td>
						<td class="td1"><button id="b2" class="undetermined"></button></td>
						<td class="td1"><button class="b2"></button></td>
					</tr>
					<%
																		break;
																	case 3:
																	
					%>
					<tr>
						<td class="td1"><%=rs.getString("lights_num4room")%></td>
						<td class="td1"><%=rs.getString("lights_location")%></td>
						<td class="td1"><%=rs.getString("lights_range")%></td>
						<td class="td1"><button id="b3" class="undetermined"></button></td>
						<td class="td1"><button class="b2"></button></td>
					</tr>
					<%
																		break;
																	case 4:
																	
					%>
					<tr>
						<td class="td1"><%=rs.getString("lights_num4room")%></td>
						<td class="td1"><%=rs.getString("lights_location")%></td>
						<td class="td1"><%=rs.getString("lights_range")%></td>
						<td class="td1"><button id="b4" class="undetermined"></button></td>
						<td class="td1"><button class="b2"></button></td>
					</tr>
					<%
																		break;
																	case 5:
																	
					%>
					<tr>
						<td class="td1"><%=rs.getString("lights_num4room")%></td>
						<td class="td1"><%=rs.getString("lights_location")%></td>
						<td class="td1"><%=rs.getString("lights_range")%></td>
						<td class="td1"><button id="b5" class="undetermined"></button></td>
						<td class="td1"><button class="b2"></button></td>
					</tr>
					<%
																		break;
																	case 6:
																	
					%>
					<tr>
						<td class="td1"><%=rs.getString("lights_num4room")%></td>
						<td class="td1"><%=rs.getString("lights_location")%></td>
						<td class="td1"><%=rs.getString("lights_range")%></td>
						<td class="td1"><button id="b6" class="undetermined"></button></td>
						<td class="td1"><button class="b2"></button></td>
					</tr>
					<%
																		break;
																	case 7:
																	
					%>
					<tr>
						<td class="td1"><%=rs.getString("lights_num4room")%></td>
						<td class="td1"><%=rs.getString("lights_location")%></td>
						<td class="td1"><%=rs.getString("lights_range")%></td>
						<td class="td1"><button id="b7" class="undetermined"></button></td>
						<td class="td1"><button class="b2"></button></td>
					</tr>
					<%
																		break;
																	case 8:
																	
					%>
					<tr>
						<td class="td1"><%=rs.getString("lights_num4room")%></td>
						<td class="td1"><%=rs.getString("lights_location")%></td>
						<td class="td1"><%=rs.getString("lights_range")%></td>
						<td class="td1"><button id="b8" class="undetermined"></button></td>
						<td class="td1"><button class="b2"></button></td>
					</tr>
					<%
																		break;
																	case 9:
																	
					%>
					<tr>
						<td class="td1"><%=rs.getString("lights_num4room")%></td>
						<td class="td1"><%=rs.getString("lights_location")%></td>
						<td class="td1"><%=rs.getString("lights_range")%></td>
						<td class="td1"><button id="b9" class="undetermined"></button></td>
						<td class="td1"><button class="b2"></button></td>
					</tr>
					<%
																		break;
																	case 10:
																	
					%>
					<tr>
						<td class="td1"><%=rs.getString("lights_num4room")%></td>
						<td class="td1"><%=rs.getString("lights_location")%></td>
						<td class="td1"><%=rs.getString("lights_range")%></td>
						<td class="td1"><button id="b10" class="undetermined"></button></td>
						<td class="td1"><button class="b2"></button></td>
					</tr>
					<%
																		break;
																	case 11:
																	
					%>
					<tr>
						<td class="td1"><%=rs.getString("lights_num4room")%></td>
						<td class="td1"><%=rs.getString("lights_location")%></td>
						<td class="td1"><%=rs.getString("lights_range")%></td>
						<td class="td1"><button id="b11" class="undetermined"></button></td>
						<td class="td1"><button class="b2"></button></td>
					</tr>
					<%
																		break;
																	case 12:
																	
					%>
					<tr>
						<td class="td1"><%=rs.getString("lights_num4room")%></td>
						<td class="td1"><%=rs.getString("lights_location")%></td>
						<td class="td1"><%=rs.getString("lights_range")%></td>
						<td class="td1"><button id="b12" class="undetermined"></button></td>
						<td class="td1"><button class="b2"></button></td>
					</tr>
					<%
																		break;
																	case 13:
																	
					%>
					<tr>
						<td class="td1"><%=rs.getString("lights_num4room")%></td>
						<td class="td1"><%=rs.getString("lights_location")%></td>
						<td class="td1"><%=rs.getString("lights_range")%></td>
						<td class="td1"><button id="b13" class="undetermined"></button></td>
						<td class="td1"><button class="b2"></button></td>
					</tr>
					<%
																		break;
																	case 14:
																	
					%>
					<tr>
						<td class="td1"><%=rs.getString("lights_num4room")%></td>
						<td class="td1"><%=rs.getString("lights_location")%></td>
						<td class="td1"><%=rs.getString("lights_range")%></td>
						<td class="td1"><button id="b14" class="undetermined"></button></td>
						<td class="td1"><button class="b2"></button></td>
					</tr>
					<%
																		break;
																	default:
																		break;
																}
																j++;
						}
															} catch (SQLException e) {
																e.printStackTrace();
															} finally {
																DBUtil.close(conn, null, rs); //关闭连接和结果集
															}
					%>
				</table>
				<script type="text/javascript">
						function showLight() {
							if("<%=i%>">0){
								for(var x = 0;true;x++){//用于break
									var tr0 = "<%=tr0%>";
									var td0 = "<%=td0%>";
									var l0 = "<%=l0%>";
									
									var tr1 = "<%=tr1%>";
									var td1 = "<%=td1%>";
									var l1 = "<%=l1%>";
									
									var tr2 = "<%=tr2%>";
									var td2 = "<%=td2%>";
									var l2 = "<%=l2%>";
									
									var tr3 = "<%=tr3%>";
									var td3 = "<%=td3%>";
									var l3 = "<%=l3%>";
									
									var tr4 = "<%=tr4%>";
									var td4 = "<%=td4%>";
									var l4 = "<%=l4%>";
									
									var tr5 = "<%=tr5%>";
									var td5 = "<%=td5%>";
									var l5 = "<%=l5%>";
									
									var tr6 = "<%=tr6%>";
									var td6 = "<%=td6%>";
									var l6 = "<%=l6%>";
									
									var tr7 = "<%=tr7%>";
									var td7 = "<%=td7%>";
									var l7 = "<%=l7%>";
									
									var tr8 = "<%=tr8%>";
									var td8 = "<%=td8%>";
									var l8 = "<%=l8%>";
									
									var tr9 = "<%=tr9%>";
									var td9 = "<%=td9%>";
									var l9 = "<%=l9%>";
									
									var tr10 = "<%=tr10%>";
									var td10 = "<%=td10%>";
									var l10 = "<%=l10%>";
									
									var tr11 = "<%=tr11%>";
									var td11 = "<%=td11%>";
									var l11 = "<%=l11%>";
									
									var tr12 = "<%=tr12%>";
									var td12 = "<%=td12%>";
									var l12 = "<%=l12%>";
									
									var tr13 = "<%=tr13%>";
									var td13 = "<%=td13%>";
									var l13 = "<%=l13%>";
									
									var tr14 = "<%=tr14%>";
									var td14 = "<%=td14%>";
									var l14 = "<%=l14%>";

								var aNode = event.srcElement;
								var light0Node = aNode.getElementById("b0");
								var light1Node = aNode.getElementById("b1");
								var light2Node = aNode.getElementById("b2");
								var light3Node = aNode.getElementById("b3");
								var light4Node = aNode.getElementById("b4");
								var light5Node = aNode.getElementById("b5");
								var light6Node = aNode.getElementById("b6");
								var light7Node = aNode.getElementById("b7");
								var light8Node = aNode.getElementById("b8");
								var light9Node = aNode.getElementById("b9");
								var light10Node = aNode.getElementById("b10");
								var light11Node = aNode.getElementById("b11");
								var light12Node = aNode.getElementById("b12");
								var light13Node = aNode.getElementById("b13");
								var light14Node = aNode.getElementById("b14");

								var tr0Node = aNode.getElementsByTagName("tr")[tr0 - 1];
								var td0Node = tr0Node
										.getElementsByTagName("td")[td0 - 1];
								var button0Node = td0Node
										.getElementsByTagName("button")[0];
								var leftNode0 = tr0Node
										.getElementsByTagName("td")[td0 - 2];
								var rightNode0 = tr0Node
										.getElementsByTagName("td")[td0];
								var leftbutton0Node = leftNode0
										.getElementsByTagName("button")[0];
								var rightbutton0Node = rightNode0
										.getElementsByTagName("button")[0];
								leftbutton0Node.className = "showno";
								rightbutton0Node.className = "showno";
								
								if(l0 == "0"){
									light0Node.className = "lightoff";
									button0Node.className = "show desk";
								}
								else{
									light0Node.className = "lighton";
									button0Node.className = "show desk";
								}

								if (
				<%=list.size()%>
					== 1)
									break;

								var tr1Node = aNode.getElementsByTagName("tr")[tr1 - 1];
								var td1Node = tr1Node
										.getElementsByTagName("td")[td1 - 1];
								var button1Node = td1Node
										.getElementsByTagName("button")[0];
								var leftNode1 = tr1Node
										.getElementsByTagName("td")[td1 - 2];
								var rightNode1 = tr1Node
										.getElementsByTagName("td")[td1];
								var leftbutton1Node = leftNode1
										.getElementsByTagName("button")[0];
								var rightbutton1Node = rightNode1
										.getElementsByTagName("button")[0];
								leftbutton1Node.className = "showno";
								rightbutton1Node.className = "showno";
								
								if(l1 == "0"){
									light1Node.className = "lightoff";
									button1Node.className = "show desk";
								}
								else{
									light1Node.className = "lighton";
									button1Node.className = "show desk";
								}

								if (
				<%=list.size()%>
					== 2)
									break;

								var tr2Node = aNode.getElementsByTagName("tr")[tr2 - 1];
								var td2Node = tr2Node
										.getElementsByTagName("td")[td2 - 1];
								var button2Node = td2Node
										.getElementsByTagName("button")[0];
								var leftNode2 = tr2Node
										.getElementsByTagName("td")[td2 - 2];
								var rightNode2 = tr2Node
										.getElementsByTagName("td")[td2];
								var leftbutton2Node = leftNode2
										.getElementsByTagName("button")[0];
								var rightbutton2Node = rightNode2
										.getElementsByTagName("button")[0];
								leftbutton2Node.className = "showno";
								rightbutton2Node.className = "showno";
								
								if(l2 == "0"){
									button2Node.className = "show desk";
									light2Node.className = "lightoff";
								}
								else{
									button2Node.className = "show desk";
									light2Node.className = "lighton";
								}

								if (
				<%=list.size()%>
					== 3)
									break;

								var tr3Node = aNode.getElementsByTagName("tr")[tr3 - 1];
								var td3Node = tr3Node
										.getElementsByTagName("td")[td3 - 1];
								var button3Node = td3Node
										.getElementsByTagName("button")[0];
								var leftNode3 = tr3Node
										.getElementsByTagName("td")[td3 - 2];
								var rightNode3 = tr3Node
										.getElementsByTagName("td")[td3];
								var leftbutton3Node = leftNode3
										.getElementsByTagName("button")[0];
								var rightbutton3Node = rightNode3
										.getElementsByTagName("button")[0];
								leftbutton3Node.className = "showno";
								rightbutton3Node.className = "showno";
								
								if(l3 == "0"){
									button3Node.className = "show desk";
									light3Node.className = "lightoff";
								}
								else{
									button3Node.className = "show desk";
									light3Node.className = "lighton";
								}

								if (
				<%=list.size()%>
					== 4)
									break;

								var tr4Node = aNode.getElementsByTagName("tr")[tr4 - 1];
								var td4Node = tr4Node
										.getElementsByTagName("td")[td4 - 1];
								var button4Node = td4Node
										.getElementsByTagName("button")[0];
								var leftNode4 = tr4Node
										.getElementsByTagName("td")[td4 - 2];
								var rightNode4 = tr4Node
										.getElementsByTagName("td")[td4];
								var leftbutton4Node = leftNode4
										.getElementsByTagName("button")[0];
								var rightbutton4Node = rightNode4
										.getElementsByTagName("button")[0];
								leftbutton4Node.className = "showno";
								rightbutton4Node.className = "showno";
								
								if(l4 == "0"){
									button4Node.className = "show desk";
									light4Node.className = "lightoff";
								}
								else{
									button4Node.className = "show desk";
									light4Node.className = "lighton";
								}

								if (
				<%=list.size()%>
					== 5)
									break;

								var tr5Node = aNode.getElementsByTagName("tr")[tr5 - 1];
								var td5Node = tr5Node
										.getElementsByTagName("td")[td5 - 1];
								var button5Node = td5Node
										.getElementsByTagName("button")[0];
								var leftNode5 = tr5Node
										.getElementsByTagName("td")[td5 - 2];
								var rightNode5 = tr5Node
										.getElementsByTagName("td")[td5];
								var leftbutton5Node = leftNode5
										.getElementsByTagName("button")[0];
								var rightbutton5Node = rightNode5
										.getElementsByTagName("button")[0];
								leftbutton5Node.className = "showno";
								rightbutton5Node.className = "showno";
								
								if(l5 == "0"){
									button5Node.className = "show desk";
									light5Node.className = "lightoff";
								}
								else{
									button5Node.className = "show desk";
									light5Node.className = "lighton";
								}

								if (
				<%=list.size()%>
					== 6)
									break;

								var tr6Node = aNode.getElementsByTagName("tr")[tr6 - 1];
								var td6Node = tr6Node
										.getElementsByTagName("td")[td6 - 1];
								var button6Node = td6Node
										.getElementsByTagName("button")[0];
								var leftNode6 = tr6Node
										.getElementsByTagName("td")[td6 - 2];
								var rightNode6 = tr6Node
										.getElementsByTagName("td")[td6];
								var leftbutton6Node = leftNode6
										.getElementsByTagName("button")[0];
								var rightbutton6Node = rightNode6
										.getElementsByTagName("button")[0];
								leftbutton6Node.className = "showno";
								rightbutton6Node.className = "showno";
								
								if(l6 == "0"){
									button6Node.className = "show desk";
									light6Node.className = "lightoff";
								}
								else{
									button6Node.className = "show desk";
									light6Node.className = "lighton";
								}

								if (
				<%=list.size()%>
					== 7)
									break;

								var tr7Node = aNode.getElementsByTagName("tr")[tr7 - 1];
								var td7Node = tr7Node
										.getElementsByTagName("td")[td7 - 1];
								var button7Node = td7Node
										.getElementsByTagName("button")[0];
								var leftNode7 = tr7Node
										.getElementsByTagName("td")[td7 - 2];
								var rightNode7 = tr7Node
										.getElementsByTagName("td")[td7];
								var leftbutton7Node = leftNode7
										.getElementsByTagName("button")[0];
								var rightbutton7Node = rightNode7
										.getElementsByTagName("button")[0];
								leftbutton7Node.className = "showno";
								rightbutton7Node.className = "showno";
								
								if(l7 == "0"){
									button7Node.className = "show desk";
									light7Node.className = "lightoff";
								}
								else{
									button7Node.className = "show desk";
									light7Node.className = "lighton";
								}

								if (
				<%=list.size()%>
					== 8)
									break;

								var tr8Node = aNode.getElementsByTagName("tr")[tr8 - 1];
								var td8Node = tr8Node
										.getElementsByTagName("td")[td8 - 1];
								var button8Node = td8Node
										.getElementsByTagName("button")[0];
								var leftNode8 = tr8Node
										.getElementsByTagName("td")[td8 - 2];
								var rightNode8 = tr8Node
										.getElementsByTagName("td")[td8];
								var leftbutton8Node = leftNode8
										.getElementsByTagName("button")[0];
								var rightbutton8Node = rightNode8
										.getElementsByTagName("button")[0];
								leftbutton8Node.className = "showno";
								rightbutton8Node.className = "showno";
								
								if(l8 == "0"){
									button8Node.className = "show desk";
									light8Node.className = "lightoff";
								}
								else{
									button8Node.className = "show desk";
									light8Node.className = "lighton";
								}

								if (
				<%=list.size()%>
					== 9)
									break;

								var tr9Node = aNode.getElementsByTagName("tr")[tr9 - 1];
								var td9Node = tr9Node
										.getElementsByTagName("td")[td9 - 1];
								var button9Node = td9Node
										.getElementsByTagName("button")[0];
								var leftNode9 = tr9Node
										.getElementsByTagName("td")[td9 - 2];
								var rightNode9 = tr9Node
										.getElementsByTagName("td")[td9];
								var leftbutton9Node = leftNode9
										.getElementsByTagName("button")[0];
								var rightbutton9Node = rightNode9
										.getElementsByTagName("button")[0];
								leftbutton9Node.className = "showno";
								rightbutton9Node.className = "showno";
								
								if(l9 == "0"){
									button9Node.className = "show desk";
									light9Node.className = "lightoff";
								}
								else{
									button9Node.className = "show desk";
									light9Node.className = "lighton";
								}

								if (
				<%=list.size()%>
					== 10)
									break;

								var tr10Node = aNode.getElementsByTagName("tr")[tr10 - 1];
								var td10Node = tr10Node
										.getElementsByTagName("td")[td10 - 1];
								var button10Node = td10Node
										.getElementsByTagName("button")[0];
								var leftNode10 = tr10Node
										.getElementsByTagName("td")[td10 - 2];
								var rightNode10 = tr10Node
										.getElementsByTagName("td")[td10];
								var leftbutton10Node = leftNode10
										.getElementsByTagName("button")[0];
								var rightbutton10Node = rightNode10
										.getElementsByTagName("button")[0];
								leftbutton10Node.className = "showno";
								rightbutton10Node.className = "showno";
								
								if(l10 == "0"){
									light10Node.className = "lightoff";
									button10Node.className = "show desk";
								}
								else{
									button10Node.className = "show desk";
									light10Node.className = "lighton";
								}

								if (
				<%=list.size()%>
					== 11)
									break;

								var tr11Node = aNode.getElementsByTagName("tr")[tr11 - 1];
								var td11Node = tr11Node
										.getElementsByTagName("td")[td11 - 1];
								var button11Node = td11Node
										.getElementsByTagName("button")[0];
								var leftNode11 = tr11Node
										.getElementsByTagName("td")[td11 - 2];
								var rightNode11 = tr11Node
										.getElementsByTagName("td")[td11];
								var leftbutton11Node = leftNode11
										.getElementsByTagName("button")[0];
								var rightbutton11Node = rightNode11
										.getElementsByTagName("button")[0];
								leftbutton11Node.className = "showno";
								rightbutton11Node.className = "showno";
								
								if(l11 == "0"){
									button11Node.className = "show desk";
									light11Node.className = "lightoff";
								}
								else{
									button11Node.className = "show desk";
									light11Node.className = "lighton";
								}

								if (
				<%=list.size()%>
					== 12)
									break;

								var tr12Node = aNode.getElementsByTagName("tr")[tr12 - 1];
								var td12Node = tr12Node
										.getElementsByTagName("td")[td12 - 1];
								var leftNode12 = tr12Node
										.getElementsByTagName("td")[td12 - 2];
								var rightNode12 = tr12Node
										.getElementsByTagName("td")[td12];
								var leftbutton12Node = leftNode12
										.getElementsByTagName("button")[0];
								var rightbutton12Node = rightNode12
										.getElementsByTagName("button")[0];
								leftbutton12Node.className = "showno";
								rightbutton12Node.className = "showno";
								var button12Node = td12Node
										.getElementsByTagName("button")[0];
								
								if(l12 == "0"){
									button12Node.className = "show desk";
									light12Node.className = "lightoff";
								}
								else{
									button12Node.className = "show desk";
									light12Node.className = "lighton";
								}

								if (
				<%=list.size()%>
					== 13)
									break;

								var tr13Node = aNode.getElementsByTagName("tr")[tr13 - 1];
								var td13Node = tr13Node
										.getElementsByTagName("td")[td13 - 1];
								var button13Node = td13Node
										.getElementsByTagName("button")[0];
								var leftNode13 = tr13Node
										.getElementsByTagName("td")[td13 - 2];
								var rightNode13 = tr13Node
										.getElementsByTagName("td")[td13];
								var leftbutton13Node = leftNode13
										.getElementsByTagName("button")[0];
								var rightbutton13Node = rightNode13
										.getElementsByTagName("button")[0];
								leftbutton13Node.className = "showno";
								rightbutton13Node.className = "showno";
								
								if(l13 == "0"){
									button13Node.className = "show desk";
									light13Node.className = "lightoff";
								}
								else{
									button13Node.className = "show desk";
									light13Node.className = "lighton";
								}

								if (
				<%=list.size()%>
					== 14)
									break;

								var tr14Node = aNode.getElementsByTagName("tr")[tr14 - 1];
								var td14Node = tr14Node
										.getElementsByTagName("td")[td14 - 1];
								var button14Node = td14Node
										.getElementsByTagName("button")[0];
								var leftNode14 = tr14Node
										.getElementsByTagName("td")[td14 - 2];
								var rightNode14 = tr14Node
										.getElementsByTagName("td")[td14];
								var leftbutton14Node = leftNode14
										.getElementsByTagName("button")[0];
								var rightbutton14Node = rightNode14
										.getElementsByTagName("button")[0];
								leftbutton14Node.className = "showno";
								rightbutton14Node.className = "showno";
								
								if(l14 == "0"){
									button14Node.className = "show desk";
									light14Node.className = "lightoff";
								}
								else{
									button14Node.className = "show desk";
									light14Node.className = "lighton";
								}

								if (
				<%=list.size()%>
					== 15)
									break;
							}
						}
					}
				</script>
			</div>
		</div>
	</div>
</body>
</html>
