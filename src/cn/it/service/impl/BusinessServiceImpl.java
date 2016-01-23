package cn.it.service.impl;

import cn.it.dao.IntelligentDao;
import cn.it.dao.impl.IntelligentDaoImpl;
import cn.it.domain.User;
import cn.it.exception.UserExistException;
import cn.it.utils.ServiceUtils;

public class BusinessServiceImpl {

	private IntelligentDao dao = new IntelligentDaoImpl();

	// ��web���ṩע�����
	public void register(User user)throws UserExistException{

		//���ж��û��Ƿ����
		boolean b = dao.find(user.getPerson_name());
		if(b){
			throw new UserExistException();
		}else{
			String md5Password = ServiceUtils.md5(user.getPerson_password());
			user.setPerson_password(md5Password);
			dao.add(user);
		}
	}
	
	//��web���ṩ��¼����
	public User login(String account,String password){
		
		password = ServiceUtils.md5(password);
		return dao.find(account, password);
		
	}
	
	//��web���ṩ�˻�ע������
	public void logout(){
		
	}
	
	//��web���ṩ�޸��˻�����
	public void updateAccount(){
		
	}
}
