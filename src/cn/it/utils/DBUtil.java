package cn.it.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

//���ݿ�����Ĺ�����
public class DBUtil {

	//���ݿ�����URL
	private static final String DB_URL = "jdbc:sqlserver://localhost:1433;DatabaseName=smartLight_2.0";
	
	//���ݿ��û���������
	private static final String USERNAME = "sa";
	private static final String PASSWORD = "qq099422";
	
	//��������
	static{
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	//������������
	public static Connection getConn(){
		Connection conn = null;
		try {
			//ͨ��������������ȡ���ݿ�����
			conn = DriverManager.getConnection(DB_URL,USERNAME,PASSWORD);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	//ִ�����ݿ����SQL
	public static int executeUpdate(Connection conn,String sql,Object... params){
		//������²����Ľ��
		int rst = -1;
		try {
			//�ر��Զ��ύ����
			conn.setAutoCommit(false);
			
			//�����Ự
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			//ѭ�����ò���
			for(int i = 0; i < params.length; i++){
				pstmt.setObject(i + 1, params[i]);
				//JDBC�Ĳ����±��Ǵ�1��ʼ��
			}
			
			//ִ�����ݿ���²���
			rst = pstmt.executeUpdate();
			
			//�ύ����
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				//�ع�����
				conn.rollback();
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
		}
		//���ظ��²����Ľ��
		return rst;
	}
	
	//ִ�����ݿ��ѯSQL
	public static ResultSet executeQuery(Connection conn,String sql,Object...params){
		//�����ѯ���������
		ResultSet rs = null;
		try {
			//�����Ự
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			//ѭ�����ò���
			for(int i = 0; i < params.length; i++){
				pstmt.setObject(i + 1, params[i]);
			}
			
			//ִ�����ݿ��ѯ����
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//���ؽ����
		return rs;
	}
	
	//�رս�������Ự������
	public static void close(Connection conn,Statement stmt,ResultSet rs){
		if(rs != null){
			try {
				//�رս����
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(stmt != null){
			try {
				//�رջỰ
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn != null){
			try {
				//�ر�����
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}











