package cn.it.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Person_ageCheckServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		
		String person_age = request.getParameter("person_age");
		if (person_age == null || person_age.trim().equals("")) {
			out.print( "���䲻��Ϊ��!");
			return;
		} else {
			if (!person_age.matches("[0-9]{1,3}")) {
				out.print("�����ʽ����!");
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
