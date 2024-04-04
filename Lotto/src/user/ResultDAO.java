package user;

import java.sql.Connection;
import java.sql.PreparedStatement;

import util.DatabaseUtil;


public class ResultDAO {
	public int reslt_insert(int num,int in_num,int total,int grade) {
		String SQL="insert into result values (?,?,?,?)";
		try {
			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,num);
			pstmt.setInt(2,in_num);
			pstmt.setInt(3,total);
			pstmt.setInt(4,grade);
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}