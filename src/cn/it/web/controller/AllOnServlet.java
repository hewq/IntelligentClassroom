package cn.it.web.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.it.dao.IntelligentDao;
import cn.it.dao.impl.IntelligentDaoImpl;
import cn.it.socket.Client;

public class AllOnServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String lights_num4room = null;
		Map<String, String> map = new LinkedHashMap<String, String>();
		String key = null;
		String value = null;
		String alllight = null;
		String light = null;
		String room_num = request.getParameter("room_num");

		String sql = "update lights set lights_state=1 where lights_room=(select room_id from room where room_num = "
				+ "'" + room_num + "'" + ")";
		// 获取灯的编号
		String sql_lightsnum4room = "select lights_num4room from lights where lights_room = (select room_id from room where room_num = '"
				+ room_num + "')";

		IntelligentDao dao = new IntelligentDaoImpl();
		dao.update(sql);

		// 灯的编号结果集
		ResultSet rs_lightsnum4room = dao.select(sql_lightsnum4room);

		try {
			while (rs_lightsnum4room.next()) {
				lights_num4room = rs_lightsnum4room
						.getString("lights_num4room");
				map.put(lights_num4room, "1");
			}

			for (int i = 0; i < map.size(); i++) {
				key = String.valueOf(i);
				value = map.get(key);
				alllight = alllight + key + value;
			}
			light = alllight.substring(4);
			Client client = new Client(light, room_num);
			client.start();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String room_building = room_num.substring(0, 1);
		response.sendRedirect("/IntelligentClassroom/servlet/InRoomUIServlet?room_num="
				+ room_num + "&room_building=" + room_building);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
