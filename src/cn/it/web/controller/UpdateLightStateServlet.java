package cn.it.web.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.it.dao.IntelligentDao;
import cn.it.dao.impl.IntelligentDaoImpl;
import cn.it.socket.Client;
import cn.it.utils.DBUtil;

public class UpdateLightStateServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String lightLocation_roomNum = request.getParameter("lightLocation");
		String[] lr = lightLocation_roomNum.split(":");
		String lightLocation = lr[0];
		String roomNum = lr[1];
		String roomBuilding = roomNum.substring(0, 1);
		String lights_num4room = null;
		String lightState = null;
		String alllight = null;
		String key = null;
		String value =null;
		String light;
		Map<String,String> map = new LinkedHashMap<String,String>();
		// ���ݵƵ�λ�û�ȡ�Ƶ�״̬
		String sql_lightState = "select lights_state from lights where lights_location="
				+ "'"
				+ lightLocation
				+ "' and lights_room = (select room_id from room where room_num = '"
				+ roomNum + "')";
		// ��ȡ�Ƶı��
		String sql_lightsnum4room = "select lights_num4room from lights where lights_room = (select room_id from room where room_num = '"
				+ roomNum + "')";
		// ����
		String sql_open = "update lights set lights_state = 1 where lights_location="
				+ "'"
				+ lightLocation
				+ "' and lights_room = (select room_id from room where room_num = '"
				+ roomNum + "')";
		// �ص�
		String sql_close = "update lights set lights_state = 0 where lights_location="
				+ "'"
				+ lightLocation
				+ "' and lights_room = (select room_id from room where room_num = '"
				+ roomNum + "')";

		IntelligentDao dao = new IntelligentDaoImpl();
		// ���صƵ�״̬
		ResultSet rs_lightState = dao.select(sql_lightState);
		// �õ��ڷ����ڵı��
		ResultSet rs_lightsnum4room = dao.select(sql_lightsnum4room);
		try {
			while (rs_lightState.next()) {
				if (rs_lightState.getString("lights_state").equals("1")) { // �Ѿ����ŵ�
					dao.update(sql_close);// �ص�
				} else {
					dao.update(sql_open); // ����
				}
			}
			while (rs_lightsnum4room.next()) {
				lights_num4room = rs_lightsnum4room
						.getString("lights_num4room");
				// ���ݵƵı�Ż�ȡ�Ƶ�״̬
				String sql_lightState4lightsnum = "select lights_state from lights where lights_num4room="
						+ "'"
						+ lights_num4room
						+ "' and lights_room = (select room_id from room where room_num = '"
						+ roomNum + "')";
				// ���صƵ�״̬
				ResultSet rs_lightState4lightsnum = dao.select(sql_lightState4lightsnum);
				while (rs_lightState4lightsnum.next()) {
					lightState = rs_lightState4lightsnum
							.getString("lights_state");
					map.put(lights_num4room, lightState);
				}
			}
			response.sendRedirect("/IntelligentClassroom/servlet/InRoomUIServlet?room_num="
					+ roomNum + "&room_building=" + roomBuilding);
			for(int i = 0;i < map.size();i++){
				key = String.valueOf(i);
				value = map.get(key);
				alllight = alllight + key + value;
			}
			light = alllight.substring(4);
			Client client = new Client(light,roomNum);
			client.start();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dao.close();
		}

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
