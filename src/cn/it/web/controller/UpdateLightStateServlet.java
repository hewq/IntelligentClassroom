package cn.it.web.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.it.dao.IntelligentDao;
import cn.it.dao.impl.IntelligentDaoImpl;
import cn.it.utils.DBUtil;

public class UpdateLightStateServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String lightLocation_roomNum = request.getParameter("lightLocation");
		String[] lr = lightLocation_roomNum.split(":");
		String lightLocation = lr[0];
		String roomNum = lr[1];
		String roomBuilding = roomNum.substring(0, 1);
		// ��ȡ�Ƶ�״̬
		String sql_lightState = "select lights_state from lights where lights_location="
				+ "'"
				+ lightLocation
				+ "' and lights_room = (select room_id from room where room_num = '"
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
		try {
			while (rs_lightState.next()) {
				if (rs_lightState.getString("lights_state").equals("1")) {	//�Ѿ����ŵ�
					dao.update(sql_close);//�ص�
				}else{
					dao.update(sql_open);	//����
				}
			}
			request.setAttribute("room_num", roomNum);
			request.setAttribute("room_building", roomBuilding);
			request.getRequestDispatcher("/WEB-INF/jsp/inRoom.jsp").forward(
					request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
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
