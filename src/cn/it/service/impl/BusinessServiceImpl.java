package cn.it.service.impl;

import cn.it.dao.IntelligentDao;
import cn.it.dao.impl.IntelligentDaoImpl;
import cn.it.domain.User;
import cn.it.exception.UserExistException;
import cn.it.utils.ServiceUtils;

public class BusinessServiceImpl {

	private IntelligentDao dao = new IntelligentDaoImpl();

	// 对web层提供注册服务
	public void register(User user)throws UserExistException{

		//先判断用户是否存在
		boolean b = dao.find(user.getPerson_name());
		if(b){
			throw new UserExistException();
		}else{
			String md5Password = ServiceUtils.md5(user.getPerson_password());
			user.setPerson_password(md5Password);
			dao.add(user);
		}
	}
	
	//对web层提供登录服务
	public User login(String account,String password){
		
		password = ServiceUtils.md5(password);
		return dao.find(account, password);
		
	}
	
	//对web层提供账户注销服务
	public void logout(){
		
	}
	
	//对web层提供修改账户服务
	public void updateAccount(){
		
	}
}
