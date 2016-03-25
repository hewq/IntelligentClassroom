package cn.it.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SelectClassRecordServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String startTime = request.getParameter("startinput");
		String endTime = request.getParameter("endinput");
		String room_num = request.getParameter("classNum");

		response.sendRedirect(request.getContextPath()
				+ "/servlet/SelectClassRecordUIServlet?startTime=" + startTime
				+ "&endTime=" + endTime + "&room_num=" + room_num);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
