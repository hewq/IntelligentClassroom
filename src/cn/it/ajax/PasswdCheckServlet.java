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
import cn.it.utils.ServiceUtils;

public class PasswdCheckServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		String account = request.getParameter("account");
		String userpwd = ServiceUtils.md5(request.getParameter("userpwd"));
		String password = null;
		System.out.println(account);
		IntelligentDao dao = new IntelligentDaoImpl();
		if(!dao.findAccount(account)){
			System.out.println(dao.findAccount(account));
			out.print("’À∫≈≤ª¥Ê‘⁄£°");
		}
		else{
			String sql = "select person_passwork from person where person_account = '"+account+"'";
			ResultSet rs = dao.select(sql);
			try {
				while(rs.next()){
					password = rs.getString("person_passwork");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(!"".equals(userpwd)){
				if(password.equals(userpwd)){
					out.print("√‹¬Î’˝»∑£°");
				}
				else{
					out.print("√‹¬Î¥ÌŒÛ£°");
				}
			}
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
