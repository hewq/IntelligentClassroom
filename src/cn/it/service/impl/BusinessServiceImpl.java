package cn.it.service.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import cn.it.dao.IntelligentDao;
import cn.it.dao.impl.IntelligentDaoImpl;
import cn.it.domain.User;
import cn.it.exception.UserExistException;
import cn.it.utils.ServiceUtils;

public class BusinessServiceImpl {

	private IntelligentDao dao = new IntelligentDaoImpl();

	// ��web���ṩע�����
	public void register(User user)throws UserExistException{

		String sql = "select * from person where person_num ="+user.getPerson_num();
		String sql2 = "select * from person where person_account ="+user.getPerson_account();
		IntelligentDao dao = new IntelligentDaoImpl();
		ResultSet rs = dao.select(sql);
		ResultSet rs2 = dao.select(sql2);
		//���ж��û��Ƿ����
		try {
			if(rs.next()){
				throw new UserExistException();
			}
			else if(rs2.next()){
				throw new UserExistException();
			}
			else{
				String md5Password = ServiceUtils.md5(user.getPerson_password());
				user.setPerson_password(md5Password);
				dao.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
