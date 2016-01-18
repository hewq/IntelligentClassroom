package cn.it.dao;

import cn.it.domain.User;

public interface IntelligentDao {

	// �����û�
	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.it.dao.impl.IntelligentDao#add(cn.it.domain.User)
	 */
	void add(User user);

	// ɾ���û�
	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.it.dao.impl.IntelligentDao#delete(java.lang.String)
	 */
	void delete(String person_id);

	// ��ѯ�û���ϸ����
	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.it.dao.impl.IntelligentDao#find(java.lang.String,
	 * java.lang.String)
	 */
	User find(String person_account, String person_passwork);

	// �����û��Ƿ����
	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.it.dao.impl.IntelligentDao#find(java.lang.String)
	 */
	boolean find(String Person_name);

	// �޸��û�����
	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.it.dao.impl.IntelligentDao#update(cn.it.domain.User)
	 */
	void update(User user);

	void update(String sql);

}