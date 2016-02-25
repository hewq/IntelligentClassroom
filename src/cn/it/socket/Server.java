package cn.it.socket;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import java.io.*;


import cn.it.exception.MessageFlagException;
import cn.it.multiThread.MultiClientThread;

public class Server implements Runnable{
	public static int PORT = 6543;
	private Lock lock = new ReentrantLock();
	private Condition condition = lock.newCondition();
	private boolean flag = false;
	private Socket socket = null;
	private MultiClientThread MCT = new MultiClientThread();

	public Server(){
		
	}
	public Server(Socket s){
		socket = s;
	}
	public void run(){
		while (true){
			lock.lock();
			try {
				while(flag)
					try {
						condition.await();
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				listen();
				flag = true;
				condition.signalAll();
			} finally{
				lock.unlock();
			}
		}
	}
	
	public void listen() {
		ServerSocket s = null;
		BufferedReader br = null;
		BufferedReader brf = null;
		PrintWriter pw = null;
		PrintWriter pwf = null;
		try {
			
			// ���ڽ��տͻ��˷���������
			br = new BufferedReader(new InputStreamReader(
					socket.getInputStream()));
			pw = new PrintWriter(new BufferedWriter(new OutputStreamWriter(
					socket.getOutputStream())), true);
			pwf = new PrintWriter(
					new BufferedWriter(new FileWriter("buf.txt")), true);
			brf = new BufferedReader(new FileReader("buf.txt"));
			int i = 0;
			String ack = null;
			while (i < 21) {		//��ǰֻ����6����
				int bte = br.read();
				if (bte == 'X') {
					String str = brf.readLine();
					String flag = str.substring(0, 2);
					String [] gatewayMsg = str.split(":");
					String msg = gatewayMsg[0];
					String roomNum = gatewayMsg[1];
					if (flag.equals("11")) { // ��11����ʾ�Ƶ���Ϣ,������Ϸ���111
						ack = "111";
						pw.println(ack);
						pw.flush();
					} else if (flag.equals("20")) { // ��20����ʾRFID����Ϣ,������Ϸ���001
						ack = "001";
						pw.println(ack);
						pw.flush();
					} else if (flag.equals("10")) { // ��10����ʾ�������Ϣ,������ϲ�����ȷ��
						pw.println(ack);
						pw.flush();
					} else {
						ack = "999";
						pw.println(ack);
						pw.flush();
						throw new MessageFlagException("������Ϣ����!");
					}
				} else {
					System.out.print((char) bte);
					//Thread.sleep(1000);
					pwf.print((char) bte);
					pwf.flush();
					i++;
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			System.out.println("Close.....");
			try {
				br.close();
				pw.close();
				socket.close();
				s.close();
			} catch (Exception e2) {

			}
		}
	}

}