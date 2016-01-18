package cn.it.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.it.domain.User;
import cn.it.service.impl.BusinessServiceImpl;

public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		BusinessServiceImpl service = new BusinessServiceImpl();
		
		String username = request.getParameter("account");
		String password = request.getParameter("password");
		
		User user = service.login(username, password);
		if(user != null){
			request.getSession().setAttribute("user", user);
			//response.sendRedirect("/WEB-INF/jsp/manage_index.jsp");
			response.sendRedirect(request.getContextPath()+"/servlet/Manage_indexUIServlet");
			return;
		}else{
			request.setAttribute("message", "用户名或密码错误！");
			request.getRequestDispatcher("/message.jsp").forward(request, response);
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
