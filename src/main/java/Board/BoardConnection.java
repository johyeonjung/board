package Board;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardConnection {
	
		
		public static Connection dbConn() {
			
			Connection conn = null; // db접속 객체
			 
		     try {
		         // mysql jdbc driver 로딩
		         Class.forName("com.mysql.jdbc.Driver");

		         // db연결 문자열 but 이방법은 보안에 취약하다. ..
		         String url = "jdbc:mysql://localhost:3306/Board";
		         String id = "root"; // mysql 접속아이디
		         String pwd = "dkfmaekdns2"; // mysql 접속 비번

		         // db 접속

		         conn = DriverManager.getConnection(url, id, pwd);
		         
		     } catch (Exception e) {
		         // db관련작업은 반드시 익셉션 처리
		         e.printStackTrace();
		     }
		     return conn;
		}
	 
}
		
     

 
	


