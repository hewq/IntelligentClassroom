package cn.it.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import cn.it.dao.IntelligentDao;
import cn.it.domain.User;
import cn.it.utils.DBUtil;

public class IntelligentDaoImpl implements IntelligentDao {

	private Statement stmt = null;
	private ResultSet rs = null;
	private Connection conn = DBUtil.getConn();
	
	
	public Statement getStmt() {
		return stmt;
	}

	public void setStmt(Statement stmt) {
		this.stmt = stmt;
	}

	public ResultSet getRs() {
		return rs;
	}

	public void setRs(ResultSet rs) {
		this.rs = rs;
	}

	public Connection getConn() {
		return conn;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}

	// 增加用户
	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.it.dao.impl.IntelligentDao#add(cn.it.domain.User)
	 */
	/* (non-Javadoc)
	 * @see cn.it.dao.impl.IntelligentDao#add(cn.it.domain.User)
	 */
	public void add(User user) {

		String sql = "insert into person(person_num,person_name,person_age,person_account,person_passwork,person_position,person_cardCode)values("
				+ user.getPerson_num()
				+ ",'"
				+ user.getPerson_name()
				+ "',"
				+ user.getPerson_age()
				+ ",'"
				+ user.getPerson_account()
				+ "','"
				+ user.getPerson_password()
				+ "',"
				+ user.getPerson_power()
				+ ",'"
				+ user.getPerson_cardCode()
				+ "')";

		
		DBUtil.executeUpdate(conn, sql);
		DBUtil.close(conn, stmt, rs);

	}

	// 删除用户
	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.it.dao.impl.IntelligentDao#delete(java.lang.String)
	 */
	/* (non-Javadoc)
	 * @see cn.it.dao.impl.IntelligentDao#delete(java.lang.String)
	 */
	public void delete(String person_id) {

		String sql = "delete from person where person_id=" + person_id;
		DBUtil.executeUpdate(conn, sql);
		DBUtil.close(conn, stmt, rs);
	}

	// 查询用户详细资料
	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.it.dao.impl.IntelligentDao#find(java.lang.String,
	 * java.lang.String)
	 */
	/* (non-Javadoc)
	 * @see cn.it.dao.impl.IntelligentDao#find(java.lang.String, java.lang.String)
	 */
	public User find(String person_account, String person_passwork) {


		User user = new User();
		String sql = "select * from person where person_account='"
				+ person_account + "'and person_passwork='" + person_passwork
				+ "'";
		rs = DBUtil.executeQuery(conn, sql);
		try {
			while (rs.next()) {
				user.setPerson_account(rs.getString("person_account"));
				user.setPerson_age(rs.getString("person_age"));
				user.setPerson_cardCode(rs.getString("person_cardCode"));
				user.setPerson_id(rs.getString("person_id"));
				user.setPerson_name(rs.getString("person_name"));
				user.setPerson_num(rs.getString("person_num"));
				user.setPerson_password(rs.getString("person_passwork"));
				user.setPerson_power(rs.getString("person_position"));

				return user;
			}

		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DBUtil.close(conn, stmt, rs);
		}

		return null;
	}

	// 查找用户是否存在
	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.it.dao.impl.IntelligentDao#find(java.lang.String)
	 */
	/* (non-Javadoc)
	 * @see cn.it.dao.impl.IntelligentDao#find(java.lang.String)
	 */
	public boolean find(String Person_name) {


		String sql = "select * from person where person_name='" + Person_name
				+ "'";

		rs = DBUtil.executeQuery(conn, sql);

		try {
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(conn, stmt, rs);
		}
		return false;
	}

	// 修改用户数据
	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.it.dao.impl.IntelligentDao#update(cn.it.domain.User)
	 */
	/* (non-Javadoc)
	 * @see cn.it.dao.impl.IntelligentDao#update(cn.it.domain.User)
	 */
	public void update(User user) {


		String sql = "update person set person_age=" + user.getPerson_age()
				+ ",person_name=" + "'"+user.getPerson_name()+"'" + ",person_passwork="
				+ user.getPerson_password() + " where person_id="
				+ user.getPerson_id();

		DBUtil.executeUpdate(conn, sql);
		DBUtil.close(conn, stmt, rs);
	}

	/* (non-Javadoc)
	 * @see cn.it.dao.impl.IntelligentDao#update(java.lang.String)
	 */
	public void update(String sql) {


		DBUtil.executeUpdate(conn, sql);
	}
	
	public ResultSet select(String sql){

		rs = DBUtil.executeQuery(conn, sql);
		
		return rs;
	}
	
	public void close(){
		DBUtil.close(conn, stmt, rs);
	}
}
