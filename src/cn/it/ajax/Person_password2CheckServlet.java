package cn.it.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Person_password2CheckServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		
		String person_password = request.getParameter("person_password");
		String person_password2 = request.getParameter("person_password2");
		if (person_password2 == null || person_password2.trim().equals("")) {
			out.print( "���벻��Ϊ��!");
			return;
		} else {
			if (!person_password2.equals(person_password)) {
				out.print("�������벻һ��!");
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
