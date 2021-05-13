package admin.model.service;

import java.sql.Connection;

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

}