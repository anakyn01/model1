package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BoardDelete {

	public static void main(String[] args) {

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
			
			//매개변수화된 SQL문 작성
			String sql = "DELETE FROM boards WHERE bwriter=?";
			
			//PreparedStatement 얻기 및 값 지정
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,  "winter");
			
			//SQL문 실행
			int rows = pstmt.executeUpdate();
			System.out.println("삭제된 행 수: " + rows);
			
		//preparedStatement닫기
			pstmt.close();
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(conn != null) {
				try {
					conn.close();
				}catch (SQLException e) {}
			}
		}

	}

}