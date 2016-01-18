package cn.it.dao;

import cn.it.domain.User;

public interface IntelligentDao {

	// 增加用户
	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.it.dao.impl.IntelligentDao#add(cn.it.domain.User)
	 */
	void add(User user);

	// 删除用户
	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.it.dao.impl.IntelligentDao#delete(java.lang.String)
	 */
	void delete(String person_id);

	// 查询用户详细资料
	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.it.dao.impl.IntelligentDao#find(java.lang.String,
	 * java.lang.String)
	 */
	User find(String person_account, String person_passwork);

	// 查找用户是否存在
	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.it.dao.impl.IntelligentDao#find(java.lang.String)
	 */
	boolean find(String Person_name);

	// 修改用户数据
	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.it.dao.impl.IntelligentDao#update(cn.it.domain.User)
	 */
	void update(User user);

	void update(String sql);

}