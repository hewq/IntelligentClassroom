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

		//��¼��֤
		String user_name = request.getParameter("user_name");	//�û���
		String user_key = request.getParameter("user_key");	//����
		
		//���ҵ�״̬
		String class_key = request.getParameter("class_key");	//���Һ�
		
		//����ָ��
		String set_light = request.getParameter("set_light");	//���õƵ�״̬
		//String class_key = request.getParameter("class_key");	//���Һ�
		String light = request.getParameter("light");	//�����
		
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
