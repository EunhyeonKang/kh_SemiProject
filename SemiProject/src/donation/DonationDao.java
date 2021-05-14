package donation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import donation.login.Member;

public class DonationDao {

	public ArrayList<DonationList> selectDonationList(Connection conn, int start, int end) {
		PreparedStatement pstmt = null;
		ArrayList<DonationList> list = new ArrayList<>();
		ResultSet rset = null;
		
		String query = "SELECT * FROM(SELECT ROWNUM AS RNUM, N.*FROM(SELECT * FROM Donation_List ORDER BY dona_NO DESC)N) WHERE RNUM BETWEEN ? AND ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				DonationList d = new DonationList();
				d.setDona_no(rset.getInt("dona_no"));
				d.setDona_content(rset.getString("dona_content"));
				d.setDona_title(rset.getString("dona_title"));
				d.setDona_writer(rset.getString("dona_writer"));
				d.setPa_amount(rset.getInt("pa_amount"));
				d.setPa_level(rset.getString("pa_level"));
				d.setDate(rset.getString("dona_date"));
				list.add(d);
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

	public int totalCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select count(*) as cnt from donation_List";
		int result = 0;
		
		try {
			pstmt=conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				result= rset.getInt("cnt");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public Member loginCheck(Connection conn, String id, String pw) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select * from member where member_id=? and member_pw=?";
		Member m = null;
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member();
				m.setNo(rset.getInt("member_No"));
				m.setId(rset.getString("member_id"));
				m.setPw(rset.getString("member_pw"));
				m.setName(rset.getString("member_name"));
				m.setAddr(rset.getString("member_addr"));
				m.setEmail(rset.getString("member_email"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return m;
	}

	public int insertList(Donation d, String pa_lev, Connection conn, DonationList list) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "insert into donation_list values(dona_seq.nextval,?,?,?,to_char(sysdate,'yyyy-mm-dd'),?,?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, list.getDona_title());
			pstmt.setString(2, d.getPa_name());
			pstmt.setString(3, list.getDona_content());
			pstmt.setInt(4, d.getPrice_choice());
			pstmt.setString(5, d.getPa_kind());
			
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

}





















