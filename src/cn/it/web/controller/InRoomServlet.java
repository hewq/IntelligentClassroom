package cn.it.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InRoomServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String room_num = request.getParameter("room_num");
		String room_building = request.getParameter("room_building");
		request.setAttribute("room_num", room_num);
		request.setAttribute("room_building", room_building);
		response.sendRedirect(request.getContextPath()+"/servlet/InRoomUIServlet?room_num="+room_num+"&room_building="+room_building);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
