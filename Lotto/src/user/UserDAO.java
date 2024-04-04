package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DatabaseUtil;

public class UserDAO {
	public static String password;

	public int user_insert(UserDTO userDTO) {
		password = userDTO.getPassword();
		String SQL = "insert into user values (?,?)";
		try {
			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userDTO.getPassword());
			pstmt.setString(2, userDTO.getHashpassword());
			pstmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public int login(String hashpassword, String password) {

		String SQL = "SELECT hashpassword FROM user WHERE password=?";

		try {

			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, password);

			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {

				if (rs.getString(1).equals(hashpassword))

					return 1; 

				else

					return 0;

			}
			return -1; 

		} catch (SQLException e) {

			e.printStackTrace();

		}

		return -2;

	}
}