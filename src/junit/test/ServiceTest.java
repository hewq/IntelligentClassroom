package junit.test;

import org.junit.Test;

import cn.it.domain.User;
import cn.it.exception.UserExistException;
import cn.it.service.impl.BusinessServiceImpl;

public class ServiceTest {

	@Test
	public void TestRegister() throws UserExistException{
		BusinessServiceImpl bsi = new BusinessServiceImpl();
		
		User user = new User();
		user.setPerson_account("3463");
		user.setPerson_age("25");
		user.setPerson_cardCode("98989");
		user.setPerson_name("込込込込");
		user.setPerson_num("23333");
		user.setPerson_passwork("1234567");
		user.setPerson_power("1");
		
		bsi.register(user);
	}
	
	@Test
	public void TestLogin(){
		BusinessServiceImpl bsi = new BusinessServiceImpl();
		String username = "込込込込";
		String password = "1234567";
		User user = bsi.login(username, password);
		System.out.println(user.getPerson_cardCode());
	}
}
