package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionExample {
	
	public static void main(String[] args) throws SQLException {
		Connection conn = null;
		try {
			//jdbc 드라이버 등록
		Class.forName("oracle.jdbc.OracleDriver");
		
		//연결하기
		conn = DriverManager.getConnection(
		"jdbc:oracle:thin:@localhost:1521/xe",
		"PRO_USR",
		"1234"
        );
		System.out.println("연결 성공");
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}finally {
			if(conn != null) {
				try {
					//연결 끊기
					conn.close();
					System.out.println("연결 끊기");
				}catch (SQLException e) {}
			}
		}
	}

}
