package cn.it.socket;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.Socket;

public class Client {

	private String lights = null;
	private String roomnums = null;
	public Client() {

	}
	
	public Client(String light,String roomnum){
		lights = light;
		roomnums = roomnum; 
	}

	public void start() {
		Socket socket = null;
		BufferedReader br = null;
		PrintWriter pw = null;
		String send = null;
		try {
			// 客户端socket指定服务器的地址和端口号
			socket = new Socket("127.0.0.1", 1234);
			System.out.println("Socket=" + socket);
			// 同服务器原理一样
			br = new BufferedReader(new InputStreamReader(
					socket.getInputStream()));
			pw = new PrintWriter(new BufferedWriter(new OutputStreamWriter(
					socket.getOutputStream())));
			send = "11" + lights + ":" + roomnums;
			pw.println(send);
			pw.flush();
			String str = br.readLine();
			System.out.println(str);
			pw.println("END");
			pw.flush();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				System.out.println("close......");
				br.close();
				pw.close();
				socket.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}