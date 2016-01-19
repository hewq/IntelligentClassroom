package junit.test;

import org.junit.Test;

import cn.it.socket.Client;
import cn.it.socket.Server;

public class SocketTest {

	@Test
	public void serverTest(){
		Server server = new Server();
		server.main(null);
	}
	
	@Test
	public void clientTest(){
		Client client = new Client();
		client.main(null);
	}
}
