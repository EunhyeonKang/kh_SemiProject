package free.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import common.JDBCTemplate;
import free.model.vo.Free;

public class FreeDao {

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
	
}