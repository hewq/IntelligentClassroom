package cn.it.multiThread;

public class ServerListen {

	public  void start() {
		
		ServerListenThread SLT = new ServerListenThread();
		Thread serverStart1 = new Thread(SLT);

		serverStart1.start();
	}

}
