package user;

import java.sql.Connection;
import java.sql.PreparedStatement;

import util.DatabaseUtil;


public class PlayDAO {
	public int play_insert(int num,String password,int in_num,int in_1,int in_2,int in_3,int in_4,int in_5,int in_6) {
		String SQL="insert into play values (?,?,?,?,?,?,?,?,?)";
		try {
			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,num);
			pstmt.setString(2,password);
			pstmt.setInt(3,in_num);
			pstmt.setInt(4,in_1);
			pstmt.setInt(5,in_2);
			pstmt.setInt(6,in_3);
			pstmt.setInt(7,in_4);
			pstmt.setInt(8,in_5);
			pstmt.setInt(9,in_6);
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}