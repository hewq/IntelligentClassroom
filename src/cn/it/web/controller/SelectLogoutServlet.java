package cn.it.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SelectLogoutServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String room_num = (String) request.getParameter("select");
		if(!room_num.matches("[1-5]-[1-6][0-2][0-9]")){
			request.setAttribute("error", "该房间不存在");
			request.getRequestDispatcher("/WEB-INF/jsp/inRoom.jsp").forward(request, response);
		}else{
		String room_building = room_num.substring(0,1);
		request.setAttribute("room_num", room_num);
		request.setAttribute("room_building", room_building);
		request.getRequestDispatcher("/WEB-INF/logout_jsp/inRoom.jsp").forward(request, response);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
