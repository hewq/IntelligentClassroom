package cn.it.web.UILogout;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InRoomUILogoutServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String room_num = request.getParameter("room_num");
		String room_building = request.getParameter("room_building");
		
		request.setAttribute("room_num", room_num);
		request.setAttribute("room_building", room_building);
		request.getRequestDispatcher("/WEB-INF/logout_jsp/inRoom.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
