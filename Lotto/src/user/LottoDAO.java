package user;

import java.sql.Connection;
import java.sql.PreparedStatement;

import util.DatabaseUtil;

public class LottoDAO  {
	
	public int randlotto_insert(int num,int cnt_1,int cnt_2,int cnt_3,int cnt_4,int cnt_5,int cnt_6,int cnt_7) {
		String SQL="insert into lotto_db values (?,?,?,?,?,?,?,?)";
		try {
			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,num);
			pstmt.setInt(2,cnt_1);
			pstmt.setInt(3,cnt_2);
			pstmt.setInt(4,cnt_3);
			pstmt.setInt(5,cnt_4);
			pstmt.setInt(6,cnt_5);
			pstmt.setInt(7,cnt_6);
			pstmt.setInt(8,cnt_7);
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
}
