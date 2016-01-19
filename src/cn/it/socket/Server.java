package cn.it.socket;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.ServerSocket;
import java.net.Socket;

public class Server {

	public static final int PORT = 8080;
	
	public static void main(String[] args) {
		System.out.println("����������������\n");
			Server server = new Server();
			server.init();
	}

	public void init(){
		try {
			ServerSocket serverSocket = new ServerSocket(PORT);
			while(true){
				//һ�������������ʾ��������ͻ��˻������
				Socket client = serverSocket.accept();
				//�����������
				new HandlerThread(client);
			}
		} catch (IOException e) {
			System.out.println("�������쳣��"+e.getMessage());
		}
	}
	
	private class HandlerThread implements Runnable{
		
		private Socket socket;
		public HandlerThread(Socket client){
			socket = client;
			new Thread(this).start();
		}
		
		public void run(){
			try {
				//��ȡ�ͻ��˵�����
				DataInputStream input = new DataInputStream(socket.getInputStream());
				String clientInputStr = input.readUTF();//����Ҫע��Ϳͻ����������д������Ӧ���������EOFException
				
				//����ͻ��˵�����
				System.out.println("�ͻ��˷����������ݣ�"+clientInputStr);
				
				//��ͻ��˻ظ���Ϣ
				DataOutputStream out = new DataOutputStream(socket.getOutputStream());
				System.out.println("�����룺\t");
				//���ͼ��������һ��
				String s = new BufferedReader(new InputStreamReader(System.in)).readLine();
				out.writeUTF(s);
				
				out.close();
				input.close();
			} catch (IOException e) {
				System.out.println("������ run �쳣"+e.getMessage());
			}finally{
				if(socket != null)
					try {
						socket.close();
					} catch (IOException e) {
						socket = null;
						System.out.println("����� finally �쳣��"+e.getMessage());
					}
			}
		}
	}
}
