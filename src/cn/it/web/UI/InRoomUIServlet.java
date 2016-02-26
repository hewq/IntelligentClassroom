package cn.it.web.UI;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.it.web.controller.AllOffServlet;

public class InRoomUIServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String room_num = request.getParameter("room_num");
		String room_building = request.getParameter("room_building");
		
		request.setAttribute("room_num", room_num);
		request.setAttribute("room_building", room_building);
		request.getRequestDispatcher("/WEB-INF/jsp/inRoom.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
