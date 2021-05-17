package admin.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import admin.model.dao.AdminDao;
import admin.model.vo.Admin;
import common.JDBCTemplate;

public class AdminService {

	public int insertAdmin(Admin a) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new AdminDao().insertAdmin(conn,a);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

	public Admin selectOneAdmin(String adminId) {
		Connection conn = JDBCTemplate.getConnection();
		Admin a = new AdminDao().selectOneAdmin(conn,adminId);
		JDBCTemplate.close(conn);
		return a;
	}

	public Admin selectOneAdmin(String adminId, String adminPw) {
		Connection conn = JDBCTemplate.getConnection();
		Admin a = new AdminDao().selectOneAdmin(conn,adminId,adminPw);
		JDBCTemplate.close(conn);
		return a;
	}

	public int updateAdmin(Admin a) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new AdminDao().updateAdmin(conn,a);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

	

}
