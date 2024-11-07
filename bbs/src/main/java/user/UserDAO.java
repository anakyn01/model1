package user;
/*DAO data access object, DTO datatransfer object

Connection = 연결
PreparedStatement = 설정및 실행 pstmt
ResultSet = 결과값
그래서 여기에 생성자로 접속키를 얻는다

db연결
jdbc driver를 메모리로 로딩하는것
mysql Class.forName("com.mysql.cj.jdbc.Driver");
mariadb Class.forName("org.mariadb.jdbc.Driver");

Connection conn = DriverManager.getConnection("mysql주소","사용자","비밀번호")
mysql주소 => jdbc:mysql://localhost:3306/bbs
mariadb => jdbc:mariadb://localhost:3307/데이타 베이스 명

사용자 : root
비밀번호 : 1234

데이터저장
String sql= new StringBuilder()
.append("INSERT INTO users (userid,...))
.append("VALUES (?,?,?,?,?,?)

read(select를 제외한 cud=> executeupdate)
read(executequery)

pstmt.close()

*/

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection conn;//자바와 데이터를 연결
	private PreparedStatement pstmt;//쿼리문 대기 및 설정
	private ResultSet rs;//결과값 받아오기
	
	public UserDAO() {// 접속을 위한 기본 생성자 코드 간소화를 위해서 해준다
		try {
			String dbURL = "jdbc:mysql://localhost:3306/bbs";
			//Class.forName("org.mariadb.jdbc.Driver"); 마리아 db를 사용할 경우
			String dbID = "root";
			String dbPassword = "1234";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
			//Class.forName("org.mariadb.jdbc.Driver"); 마리아 db를 사용할 경우 장지 드라이버
		}catch(Exception e) {
			e.printStackTrace();//오류를 자세히 분석함
		}
	}
	
	/*로그인 구현영역 성공실패를 뭘로 구분하냐면 숫자로 구분 
	 * 로그인 성공(1) 패스워드틀림(0), 아이디 없음(-1), -2(오류)*/
	public int login(String userID, String userPassword) {
		String sql = "select userPassword from user where userID = ?";
		//실제로 db에서 입력할 쿼리문을 'sql'변수에 미리 담아둡니다
		//선택된 유저아이디에 패스워드를 선택
		try {
			pstmt = conn.prepareStatement(sql); //sql쿼리문을 대기
			pstmt.setString(1, userID);// 첫번째 '?'에 매개변수로 받아온 'userID'를 대입
			rs=pstmt.executeQuery();//쿼리 실행한 결과를 rs에 저장
			if(rs.next()) {//결과값이 존재한다면 해당 결과값을 얻을수 잇다
				if(rs.getString(1).equals(userPassword)) {
					return 1;//로그인 성공
				}else
					return 0;//비밀번호 틀림
			}
			return -1;//아이디 없음
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2;//오류
	}
	//회원가입 기능을 담당하는 'join' 메소드 추가
	public int join(User user) {
		String sql ="insert into user values(?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;//데이터 넣기가 실패했을 경우
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
