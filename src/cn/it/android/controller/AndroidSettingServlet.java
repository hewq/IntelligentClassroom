package cn.it.android.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.it.dao.IntelligentDao;
import cn.it.dao.impl.IntelligentDaoImpl;

public class AndroidSettingServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// øÿ÷∆÷∏¡Ó
		String set_light = request.getParameter("set_light"); // …Ë÷√µ∆µƒ◊¥Ã¨
		String class_key = request.getParameter("class_key"); // ΩÃ “∫≈
		String light = request.getParameter("light"); // µ∆–Ú∫≈

		IntelligentDao dao = new IntelligentDaoImpl();
		String sql = "update lights set lights_state = "
				+ set_light
				+ " where lights_room=(select room_id from room where room_num='"
				+ class_key + "') and lights_num4room= "+light;
		dao.update(sql);
		dao.close();
		
		response.setContentType("text/plain;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("1");
		
		out.flush();
		out.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
