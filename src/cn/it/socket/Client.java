package cn.it.socket;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.Socket;

public class Client {

 public  void start() {
  Socket socket = null;
  BufferedReader br = null;
  PrintWriter pw = null;
  try {
   //�ͻ���socketָ���������ĵ�ַ�Ͷ˿ں�
   socket = new Socket("127.0.0.1", 1234);
   System.out.println("Socket=" + socket);
   //ͬ������ԭ��һ��
   br = new BufferedReader(new InputStreamReader(
     socket.getInputStream()));
   pw = new PrintWriter(new BufferedWriter(new OutputStreamWriter(
     socket.getOutputStream())));
    pw.println("howdy0\0" );
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