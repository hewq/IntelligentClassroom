package cn.it.android.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.it.dao.IntelligentDao;
import cn.it.dao.impl.IntelligentDaoImpl;

public class AndroidLightStateServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// ΩÃ “µ∆◊¥Ã¨
		String class_key = request.getParameter("class_key"); // ΩÃ “∫≈
		String sql = "select lights_state from lights where lights_room = (select room_id from room where room_num = '"
				+ class_key + "')order by lights_num4room";
		
		IntelligentDao dao = new IntelligentDaoImpl();
		ResultSet rs = dao.select(sql);
		String result = "";
		try {
			while(rs.next()){
				result = result+rs.getString("lights_state");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.setContentType("text/plain;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println(result);
		
		out.flush();
		out.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
