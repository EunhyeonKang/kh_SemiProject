package admin.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import admin.model.vo.Admin;
import common.JDBCTemplate;

public class AdminDao {

	public int insertAdmin(Connection conn, Admin a) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query="insert into admin values(admin_seq.nextval,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, a.getAdminId());
			pstmt.setString(2, a.getAdminPw());
			pstmt.setString(3, a.getAdminName());
			pstmt.setString(4, a.getPhone());
			pstmt.setString(5, a.getAddr());	
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public Admin selectOneAdmin(Connection conn, String adminId) {
		PreparedStatement pstmt = null;
		ResultSet rset= null;
		Admin a = null;
		String query = "select * from admin where admin_id=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, adminId);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				a = new Admin();
				a.setAddr(rset.getString("admin_addr"));
				a.setAdminId(rset.getString("admin_id"));
				a.setAdminName(rset.getString("admin_name"));
				a.setAdminNo(rset.getInt("admin_no"));
				a.setAdminPw(rset.getString("admin_pw"));
				a.setPhone(rset.getString("admin_phone"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		return a;
	}

	public Admin selectOneAdmin(Connection conn, String adminId, String adminPw) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select * from admin where admin_id=? and admin_pw=?";
		Admin a = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, adminId);
			pstmt.setString(2, adminPw);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				a = new Admin();
				a.setAddr(rset.getString("admin_addr"));
				a.setAdminId(rset.getString("admin_id"));
				a.setAdminName(rset.getString("admin_name"));
				a.setAdminNo(rset.getInt("admin_no"));
				a.setAdminPw(rset.getString("admin_pw"));
				a.setPhone(rset.getString("admin_phone"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return a;
	}

}
