package Board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class WriteDAO {
	private Connection conn;
	private ResultSet rs;
	
	public WriteDAO() {
		try {
			conn = BoardConnection.dbConn();		
			
		} catch  (Exception e) {
			e.printStackTrace();
			
		}
		
	}
	
	
	public String getDate() {
		String SQL="select now()";
		try {
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "";
	} 
		
	public int getNext() {
		String SQL="Select num from boardwrite order by num DESC";
		try {
			PreparedStatement pstmt=conn.prepareStatement(SQL);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				System.out.println(rs);
				System.out.println("ss");
				return rs.getInt(1)+1;
				
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	
	public int write(String id, String subject, String content) {
		String SQL = "INSERT INTO boardwrite VALUES(?,?,?,?)";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			
			pstmt.setInt(1,getNext());
			pstmt.setString(2,id);
			pstmt.setString(3, subject);
			pstmt.setString(4, content);
			
			
			
			System.out.println(id);
			System.out.println(subject);
			System.out.println(content);
			System.out.println("test");
			System.out.println(getNext());
			System.out.println("^번호");
			System.out.println(pstmt);
			
			return pstmt.executeUpdate();
			
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
		return -1;
	

	}
}

