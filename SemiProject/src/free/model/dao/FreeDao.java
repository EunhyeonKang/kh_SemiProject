package free.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import free.model.vo.Free;

public class FreeDao {

	// 게시물 작성
	public int insertFree(Connection conn, Free f) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "insert into free values(free_seq.nextval, ?, ?, ?, to_char(sysdate, 'yyyy-mm-dd'), ?, 0)";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, f.getFreeTitle());
			pstmt.setString(2, "test01"); // 테스트용 계정 추후 변경해야함
			pstmt.setString(3, f.getFreeContent());
			pstmt.setString(4, f.getFilepath());

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	// 게시물 전체 조회
	public ArrayList<Free> selectFreeList(Connection conn, int start, int end) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM (SELECT ROWNUM AS RNUM, F.* FROM (SELECT * FROM FREE ORDER BY FREE_NO DESC) F) WHERE RNUM BETWEEN ? AND ?";
		ArrayList<Free> list = new ArrayList<Free>();

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				list.add(setFree(rset, "조회"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;
	}

	// 게시물 조회용
	private Free setFree(ResultSet rset, String test) {
		Free f = new Free();

		try {
			f.setFilepath(rset.getString("filepath"));
			f.setFreeContent(rset.getString("free_content"));
			f.setFreeDate(rset.getString("free_date"));
			f.setFreeNo(rset.getInt("free_no"));
			f.setFreeTitle(rset.getString("free_title"));
			f.setFreeWriter(rset.getString("free_writer"));
			f.setReadCount(rset.getInt("read_count"));
			if (test.equals("조회")) {
				f.setRnum(rset.getInt("rnum"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return f;
	}

	public int totalCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select count(*) as cnt from free";
		int result = 0;

		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();

			if (rset.next()) {
				result = rset.getInt("cnt");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

}