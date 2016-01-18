package cn.it.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

//数据库操作的工具类
public class DBUtil {

	//数据库连接URL
	private static final String DB_URL = "jdbc:sqlserver://localhost:1433;DatabaseName=smartLight_2.0";
	
	//数据库用户名和密码
	private static final String USERNAME = "sa";
	private static final String PASSWORD = "qq099422";
	
	//加载驱动
	static{
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	//返回数据连接
	public static Connection getConn(){
		Connection conn = null;
		try {
			//通过驱动管理器获取数据库连接
			conn = DriverManager.getConnection(DB_URL,USERNAME,PASSWORD);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	//执行数据库更新SQL
	public static int executeUpdate(Connection conn,String sql,Object... params){
		//定义更新操作的结果
		int rst = -1;
		try {
			//关闭自动提交事务
			conn.setAutoCommit(false);
			
			//创建会话
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			//循环设置参数
			for(int i = 0; i < params.length; i++){
				pstmt.setObject(i + 1, params[i]);
				//JDBC的参数下标是从1开始的
			}
			
			//执行数据库更新操作
			rst = pstmt.executeUpdate();
			
			//提交事务
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				//回滚事务
				conn.rollback();
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
		}
		//返回更新操作的结果
		return rst;
	}
	
	//执行数据库查询SQL
	public static ResultSet executeQuery(Connection conn,String sql,Object...params){
		//定义查询操作结果集
		ResultSet rs = null;
		try {
			//创建会话
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			//循环设置参数
			for(int i = 0; i < params.length; i++){
				pstmt.setObject(i + 1, params[i]);
			}
			
			//执行数据库查询操作
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//返回结果集
		return rs;
	}
	
	//关闭结果集、会话和连接
	public static void close(Connection conn,Statement stmt,ResultSet rs){
		if(rs != null){
			try {
				//关闭结果集
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(stmt != null){
			try {
				//关闭会话
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn != null){
			try {
				//关闭连接
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}











