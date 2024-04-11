package db.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class DbConnect {
	static final String MYSQL_DRIVER="com.mysql.cj.jdbc.Driver";
	static final String MYSQL_URL="jdbc:mysql://localhost:3306/bit701?serverTimezone=Asia/Seoul";
	static final String USERNAME="root";
	static final String PASSWORD="1234";
	
	public DbConnect()
	{
		try {
			Class.forName(MYSQL_DRIVER);
		} catch (ClassNotFoundException e) {
			// TODO: handle exception
			System.out.println("Mysql Dirver 오류 : "+e.getMessage());
		}
	}
	
	public Connection getConnection()
	{
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(MYSQL_URL,USERNAME,PASSWORD);
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Mysql 서버 연결 실패 : "+e.getMessage());
		}
		return conn;
	}
	
	public void dbClose(PreparedStatement pstmt,Connection conn)
	{
		try {
			pstmt.close();
			conn.close();
		} catch (SQLException | NullPointerException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void dbClose(PreparedStatement pstmt,Connection conn,ResultSet rs)
	{
		try {
			rs.close();
			pstmt.close();
			conn.close();
		} catch (SQLException | NullPointerException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
