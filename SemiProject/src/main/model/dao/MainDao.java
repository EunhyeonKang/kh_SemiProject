package main.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import main.model.vo.Main;

public class MainDao {

	public ArrayList<Main> searchMain(Connection conn, String search) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select * from photo where photo_content like '%"+search+"%'";
		ArrayList<Main> list = new ArrayList<Main>();
		try {
			pstmt = conn.prepareStatement(query);
//			pstmt.setString(1, search);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Main m = new Main();
				m.setFilepath(rset.getString("filepath"));
				m.setPhotoContent(rset.getString("photo_content"));
				m.setPhotoDate(rset.getString("photo_date"));
				m.setPhotoNo(rset.getInt("photo_no"));
				m.setPhotoWriter(rset.getString("photo_writer"));
				list.add(m);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;
	}

}
