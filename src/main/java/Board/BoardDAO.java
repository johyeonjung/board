package Board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Board.BoardConnection;
import Board.BoardDTO;

public class BoardDAO {
	public ArrayList<BoardDTO> list() {
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		BoardConnection db = new BoardConnection();
		Connection conn = db.dbConn();
		PreparedStatement pstmt = null;
		String query = "select * from board";
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				BoardDTO dto= new BoardDTO();
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setName(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setEmail(rs.getString("email"));
				dto.setContent(rs.getString("content"));
				dto.setSubject(rs.getString("subject"));
				dto.setHit(rs.getInt("hit"));
				list.add(dto);
			}
		}catch (SQLException e) {
			e.printStackTrace();
			}
		return list;
		
	}
}
