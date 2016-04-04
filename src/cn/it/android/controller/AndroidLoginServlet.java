package cn.it.android.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.it.dao.IntelligentDao;
import cn.it.dao.impl.IntelligentDaoImpl;
import cn.it.domain.User;
import cn.it.utils.ServiceUtils;

public class AndroidLoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//登录验证
				String user_name = request.getParameter("user_name");	//用户名
				String user_key = request.getParameter("user_key");	//密码
				user_key = ServiceUtils.md5(user_key);
				
				IntelligentDao dao = new IntelligentDaoImpl();
				User user = new User();
				user = dao.find(user_name, user_key);
				
				response.setContentType("text/plain;charset=utf-8");
				PrintWriter out = response.getWriter();
				
				if(user != null){
					out.println("1");	//登录成功
				}
				else{
					out.println("0");	//登录失败
				}
				out.flush();
				out.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
