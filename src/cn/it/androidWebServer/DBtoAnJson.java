package cn.it.androidWebServer;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import cn.it.dao.IntelligentDao;
import cn.it.dao.impl.IntelligentDaoImpl;
import cn.it.domain.User;

public class DBtoAnJson {

	private final String ACCOUNT = "987654";
	private final String PASSWORD = "123456";

	public void getMessage() {
		IntelligentDao dao = new IntelligentDaoImpl();
		dao.find(ACCOUNT, PASSWORD);
	}

	public void IOR() {
		try {
			BufferedReader br = new BufferedReader(new FileReader("WebRoot\\toAndroid.json"));
			String str = br.readLine();
			System.out.println(str);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch(Exception e1){
			e1.printStackTrace();
		}
	}

	public void IOW() {
		PrintWriter pw = null;
		try {
			 pw = new PrintWriter(new BufferedWriter(new FileWriter(
					"WebRoot\\toAndroid.json")), true);
			pw.print("abc");
		    pw.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			 pw.close();
		}
	}
}
