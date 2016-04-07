<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="cn.it.utils.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/checkpeople.css" />
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/image/title.png">
	<script src="${pageContext.request.contextPath }/js/manage_index.js"
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
				<input type="text" name="select" placeholder="输入房间号" /> <span>${error
					}</span>
			</form>
			<a id= "switch" href="${pageContext.request.contextPath }/servlet/SwitchAccountServlet">switch</a>
			<a id= "logout" href="${pageContext.request.contextPath }/servlet/LogoutServlet">exit</a>
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
			<div id="id40">
				<span>人员总览</span>
				<div id="id400">
					<table class="id40table1">
						<tr>
							<th>编号</th>
							<th>名字</th>
							<th>年龄</th>
							<th>账号</th>
							<th>权限</th>
							<th>卡号</th>
							<th>操作</th>
						</tr>
					</table>
				</div>
				<div id="id401">
					<table id="id40table2">
						<%
							Connection conn = null; //声明连接
							ResultSet rs = null; //声明结果集
							try {
								//定义SQL语句，按照用户名排序
								String sql = "select * from person order by person_num";
								conn = DBUtil.getConn(); //通过工具类获取连接
								rs = DBUtil.executeQuery(conn, sql); //执行sql并返回结果
								while (rs.next()) { //遍历结果集
						%>
						<tr>
							<td class="td1"><%=rs.getString("person_num")%></td>
							<td class="td1"><%=rs.getString("person_name")%></td>
							<td class="td1"><%=rs.getString("person_age")%></td>
							<td class="td1"><%=rs.getString("person_account")%></td>
							<td class="td1"><%=rs.getString("person_position")%></td>
							<td class="td1"><%=rs.getString("person_cardCode")%></td>
							<td>
								<button type="submit" class="edit" name="edit"></button>
								<button type="submit" class="delete" name="delete"
									 onclick="delperson(<%=rs.getString("person_num")%>)"></button>
							</td>
						</tr>
						<script type="text/javascript">
							function delperson(person_num) {
								var flag = confirm("将永远删除此人信息。确定删除？");
								if (flag == true) {
									window.location
											.replace("DelPersonServlet?delete="
													+ person_num);
								}
							}
						</script>
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
	</div>
</body>
</html>
