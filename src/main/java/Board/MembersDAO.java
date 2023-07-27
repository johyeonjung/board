package Board;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



public class MembersDAO {
	public ArrayList<MembersDTO> list() {
		ArrayList<MembersDTO> list = new ArrayList<MembersDTO>();
		BoardConnection db = new BoardConnection();
		Connection conn = db.dbConn();
		PreparedStatement pstmt = null;
		String query = "SELECT * FROM members";
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(query);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				MembersDTO m_dto= new MembersDTO();
				m_dto.setId(rs.getString("id"));
				m_dto.setPwd(rs.getString("pwd"));
				list.add(m_dto);
			}
		}catch (SQLException e) {
			e.printStackTrace();
			}
		return list;
		
	}
}
