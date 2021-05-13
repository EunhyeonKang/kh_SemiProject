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
		String query = "select * from notice where notice_content like '%"+search+"%'";
		ArrayList<Main> list = new ArrayList<Main>();
		try {
			pstmt = conn.prepareStatement(query);
//			pstmt.setString(1, search);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Main m = new Main();
				m.setFilePath(rset.getString("filepath"));
				m.setNoticeContent(rset.getString("notice_content"));
				m.setNoticeDate(rset.getString("notice_date"));
				m.setNoticeNo(rset.getInt("notice_no"));
				m.setNoticeWriter(rset.getString("notice_writer"));
				m.setFileName(rset.getString("filepath"));
				m.setNoticeTitle(rset.getString("notice_title"));
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
