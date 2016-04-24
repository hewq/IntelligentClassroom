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

public class Person_accountCheckServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		
		String person_account = request.getParameter("person_account");
		if (person_account == null || person_account.trim().equals("")) {
			out.print( "账号不能为空!");
			return;
		} else {
			if (!person_account.matches("[a-zA-Z]{3,8}")) {
				out.print("账号必须是3-8位的字母!");
				return;
			}
		}
		IntelligentDao dao = new IntelligentDaoImpl();
		String sql = "select * from person where person_account = '"+person_account+"'";
		ResultSet rs = dao.select(sql);
		try {
			if(rs.next()){
				out.print("账号已存在!");
			}
			else{
				out.print("可创建账号!");
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
