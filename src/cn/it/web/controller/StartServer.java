package cn.it.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.it.multiThread.ServerListen;
import cn.it.socket.Server;

public class StartServer extends HttpServlet {

//	public StartServer(){
//		ServerListen SL = new ServerListen();
//		SL.start();
//	}
	
	public void init() throws ServletException{
		
		super.init();
		ServerListen SL = new ServerListen();
		SL.start();
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
