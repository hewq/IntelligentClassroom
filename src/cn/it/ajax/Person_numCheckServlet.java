package cn.it.ajax;

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

public class Person_numCheckServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		
		String person_num = request.getParameter("person_num");
		if (person_num == null || person_num.trim().equals("")) {
			out.print( "Ա���Ų���Ϊ��!");
			return;
		} else {
			if (!person_num.matches("[0-9]{8}")) {
				out.print("Ա���ű�����8λ������!");
				return;
			}
		}
		IntelligentDao dao = new IntelligentDaoImpl();
		String sql = "select * from person where person_num = "+person_num;
		ResultSet rs = dao.select(sql);
		try {
			if(rs.next()){
				out.print("Ա�����Ѵ���!");
			}
			else{
				out.print("�ɴ���Ա����!");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
