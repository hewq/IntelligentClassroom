package cn.it.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Person_powerCheckServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		
		String person_power = request.getParameter("person_power");
		if (person_power == null || person_power.trim().equals("")) {
			out.print( "Ȩ�޲���Ϊ��!");
			return;
		} else {
			if (!person_power.matches("[0-9]{1}")) {
				out.print("Ȩ�ޱ�����1λ����!");
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
