package cn.it.multiThread;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;

import cn.it.exception.MessageFlagException;
import cn.it.socket.Server;

public class MultiClientThread {

	private static final int PORT = 6543;
	private ServerSocket ss = null;
	private Socket s = null;
	
	
	public void start(){

		int counter = 1;
		try {
			 ss = new ServerSocket(PORT);
			 System.out.println(".................................................................................................................ServerSocket Start:"+ss);
			 while(true) {
			       s = ss.accept();
			      System.out.println("第 "+(counter++)+" 个连接");
			      Thread t = new Thread(new Server(s));
			      t.start();
			    }
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			try {
				ss.close();
				s.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
