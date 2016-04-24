package cn.it.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Person_cardCodeCheckServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		
		String person_cardCode = request.getParameter("person_cardCode");
		if (person_cardCode == null || person_cardCode.trim().equals("")) {
			out.print( "Person_cardCode����Ϊ��!");
			return;
		} else {
			if (!person_cardCode.matches("[0-9]{9}")) {
				out.print("Person_cardCode��ʽ����!");
				return;
			}
		}
		out.print("��ʹ��!");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
