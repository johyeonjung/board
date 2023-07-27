package Board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class NoticeDAO {
	BoardConnection db = new BoardConnection();
	Connection conn = db.dbConn();
	ResultSet rs = null;
	
	
	
	public ArrayList<NoticeDTO> list() {
		ArrayList<NoticeDTO> list = new ArrayList<NoticeDTO>();
		PreparedStatement pstmt = null;
		String query = "select * from noticeboard";
		
		
		try {
			pstmt=conn.prepareStatement(query);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				NoticeDTO dto = new NoticeDTO();
				dto.setNo(rs.getInt("no"));
				dto.setSubject(rs.getString("subject"));
				dto.setContent(rs.getString("content"));
				dto.setWriter(rs.getString("writer"));
				dto.setTime(rs.getString("time"));
				dto.setHit(rs.getInt("hit"));
				
				list.add(dto);
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return list;
		
	}
	public int getNext() {
		String SQL="Select no from noticeboard order by no DESC";
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
	
	
	public int notice_insert(int no, String subject, String content, String writer, String time, int hit) {
		String SQL = "INSERT INTO noticeboard VALUES(?,?,?,?,?,?)";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			
			pstmt.setInt(1,getNext());
			pstmt.setString(2, subject);
			pstmt.setString(3, content);
			pstmt.setString(4, writer);
			pstmt.setString(5, time);
			pstmt.setInt(6, hit);
			
			
		
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
