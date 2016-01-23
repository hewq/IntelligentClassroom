package junit.test;

import org.junit.Test;

import cn.it.androidWebServer.DBtoAnJson;

public class DBtoAnJsonTest {

	@Test
	public void testIOW(){
		DBtoAnJson dj = new DBtoAnJson();
		dj.IOW();
	}
	
	@Test
	public void testIOR(){
		DBtoAnJson dj = new DBtoAnJson();
		dj.IOR();
	}
}
