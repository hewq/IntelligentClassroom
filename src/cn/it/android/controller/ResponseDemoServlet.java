package cn.it.android.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ResponseDemoServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//登录验证
		String user_name = request.getParameter("user_name");	//用户名
		String user_key = request.getParameter("user_key");	//密码
		
		//教室灯状态
		String class_key = request.getParameter("class_key");	//教室号
		
		//控制指令
		String set_light = request.getParameter("set_light");	//设置灯的状态
		//String class_key = request.getParameter("class_key");	//教室号
		String light = request.getParameter("light");	//灯序号
		
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("{");
		out.println("'java': 'java',");
		out.println("'html': 'html',");
		out.println("'android': 'android'");
		out.println("}");
		out.flush();
		out.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
