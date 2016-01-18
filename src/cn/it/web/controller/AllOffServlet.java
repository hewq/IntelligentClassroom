package cn.it.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.it.dao.IntelligentDao;
import cn.it.dao.impl.IntelligentDaoImpl;

public class AllOffServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String room_num = request.getParameter("room_num");

		String sql = "update lights set lights_state=0 where lights_room=(select room_id from room where room_num = "
				+ "'" + room_num + "'" + ")";
		IntelligentDao dao = new IntelligentDaoImpl();
		dao.update(sql);

		String room_building = room_num.substring(0, 1);
		request.setAttribute("room_num", room_num);
		request.setAttribute("room_building", room_building);
		request.getRequestDispatcher("/WEB-INF/jsp/inRoom.jsp").forward(
				request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
