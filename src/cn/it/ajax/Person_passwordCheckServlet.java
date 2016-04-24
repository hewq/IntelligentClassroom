package cn.it.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Person_passwordCheckServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		
		String person_password = request.getParameter("person_password");
		if (person_password == null || person_password.trim().equals("")) {
			out.print( "密码不能为空!");
			return;
		} else {
			if (!person_password.matches("[A-Za-z0-9]{6,}")) {
				out.print("密码必须是至少6位的数字或字母!");
				return;
			}
		}
		out.print("可使用!");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
