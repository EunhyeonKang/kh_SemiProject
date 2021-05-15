package free.model.service;

import java.sql.Connection;

import common.JDBCTemplate;
import free.model.dao.FreeDao;
import free.model.vo.Free;

public class FreeService {

	public int insertFree(Free f) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new FreeDao().insertFree(conn, f);

		if (result > 0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);

		return result;
	}

}
