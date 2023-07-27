package Board;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Board.BoardConnection;




public class UserDAO {

	Connection conn = null;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public int login(String id, String pwd) {
		String dbPW = "";
		try {
			StringBuffer sql = new StringBuffer();
			sql.append("SELECT * FROM members WHERE id=?");
			conn = BoardConnection.dbConn();
			pstat=conn.prepareStatement(sql.toString());
			pstat.setString(1, id);
			rs=pstat.executeQuery();
			System.out.println(rs);
			
			if(rs.next()) {
				dbPW = rs.getString("pwd");
				if(dbPW.equals(pwd)) {
					return 1;
				}
				else
					return 0;
			}
			System.out.println("Sdfsdf");
			return -1;
			
		}catch(Exception e) {
			System.out.println(rs);
			e.printStackTrace();
		}
		return -2;
	}
	 
	
	
	
	
	

}
