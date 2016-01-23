package junit.test;

import org.junit.Test;

import cn.it.dao.IntelligentDao;
import cn.it.dao.impl.IntelligentDaoImpl;
import cn.it.domain.User;

public class IntelligentDaoTest {

	@Test
	public void testAdd(){
		IntelligentDao idi = new IntelligentDaoImpl();
		User user = new User();
		user.setPerson_account("2356");
		user.setPerson_age("18");
		user.setPerson_cardCode("123123");
		user.setPerson_name("¶þ¸ç");
		user.setPerson_num("555");
		user.setPerson_password("123456");
		user.setPerson_power("3");
		idi.add(user);
	}
	
	@Test
	public void testDelete(){
		IntelligentDao idi = new IntelligentDaoImpl();
		idi.delete("19");
	}
	
	@Test
	public void testFind(){
		IntelligentDao idi = new IntelligentDaoImpl();
		User user = new User();
		user = idi.find("2356", "123456");
		System.out.println(user.getPerson_id());
	}
	
	@Test
	public void testFind2(){
		IntelligentDao idi = new IntelligentDaoImpl();
		boolean b = idi.find("44");
		System.out.println(b);
	}
	
	@Test
	public void testUpdate(){
		IntelligentDao idi = new IntelligentDaoImpl();
		User user = new User();
		user = idi.find("2356", "123456");
		user.setPerson_password("0000");
		idi.update(user);
	}
}
