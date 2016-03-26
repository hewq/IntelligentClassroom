package cn.it.web.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.it.dao.IntelligentDao;
import cn.it.dao.impl.IntelligentDaoImpl;

public class DelPersonServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String person_num = request.getParameter("delete");
		IntelligentDao dao = new IntelligentDaoImpl();
		System.out.println(person_num);
		String sql = "select person_id from person where person_num="+person_num;
		ResultSet rs = dao.select(sql);
		try {
			while(rs.next()){
				String person_id = rs.getString("person_id");
				dao.delete(person_id);
				System.out.println(person_id);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("查无此人！");
			e.printStackTrace();
		}
		response.sendRedirect(request.getContextPath()+"/servlet/CheckPeopleUIServlet");
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
