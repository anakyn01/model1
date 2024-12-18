package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BoardUpdate {

	public static void main(String[] args) {
		Connection conn = null;
		try {
			//JDBC Driver 등록
			Class.forName("oracle.jdbc.OracleDriver");
			//연결하기
			conn = DriverManager.getConnection(
			"jdbc:oracle:thin:@localhost:1521/xe",
			"PRO_USR",
			"1234"
		    );
			
			//매개변수화된 sql문 작성
			String sql = new StringBuilder()
.append("UPDATE boards SET ").append("btitle=?, ").append("bcontent=?, ")
.append("bfilename=?, ").append("bfiledata=? ").append("WHERE bno=?")	
.toString();
			
//PreparedStatement 얻기 및 값 지정
PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setString(1, "수정");
pstmt.setString(2, "수정2");
pstmt.setString(3, "snowman.jpg");
pstmt.setBlob(4, BoardUpdate.class.getResourceAsStream("snowman.jpg"));
pstmt.setInt(5, 1);//1은 게시물 번호

//sql문 실행
int rows = pstmt.executeUpdate();
System.out.println("수정된 행수 : " + rows);
pstmt.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(conn != null) {
				try {
					conn.close();
				}catch(SQLException e) {}
			}
		}

	}

}
