package cn.it.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Person_nameCheckServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		
		String person_name = request.getParameter("person_name");
		if (person_name == null || person_name.trim().equals("")) {
			out.print( "用户名不能为空!");
			return;
		} else {
			if (!person_name.matches("^([\u4e00-\u9fa5]+)$")) {
				out.print("用户名必须是汉字!");
				return;
			}
		}
		out.print("可使用该用户名!");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
