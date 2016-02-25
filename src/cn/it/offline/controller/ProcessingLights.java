package cn.it.offline.controller;

import cn.it.dao.IntelligentDao;
import cn.it.dao.impl.IntelligentDaoImpl;

public class ProcessingLights {

	private String msg = null;

	public ProcessingLights() {

	}

	public ProcessingLights(String message) {
		msg = message;
	}

	public void processing() {

		String[] arr = msg.split(":");
		String light = arr[0];
		String roomnum = arr[1];
		String lightnum4room = null;
		String lightstate = null;
		char num;
		char state;
		IntelligentDao dao = new IntelligentDaoImpl();

		for (int i = 0, j = 1; j < light.length(); i += 2, j += 2) {
			num = light.charAt(i);
			state = light.charAt(j);
			lightnum4room = String.valueOf(num);
			lightstate = String.valueOf(state);

			String sql = "update lights set lights_state = '"
					+ lightstate
					+ "' where lights_num4room="
					+ "'"
					+ lightnum4room
					+ "' and lights_room = (select room_id from room where room_num = '"
					+ roomnum + "')";
			dao.update(sql);
		}
	}
}
