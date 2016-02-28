package cn.it.offline.controller;

public class ProcessingInfrared {

	private String msg = null;

	public ProcessingInfrared() {

	}

	public ProcessingInfrared(String message) {
		msg = message;
	}
	
	public void processing(){
		
		String[] arr = msg.split(":");
		String light = arr[0];
		String roomnum = arr[1];
	}
}
