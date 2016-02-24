package cn.it.multiThread;

import java.io.IOException;

import cn.it.socket.Server;

public class ServerListenThread implements Runnable {

	public void run() {
		MultiClientThread MCT = new MultiClientThread();
		MCT.start();
	}

}
