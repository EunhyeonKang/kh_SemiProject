package main.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import main.model.dao.MainDao;
import main.model.vo.Main;


public class MainService {

	public ArrayList<Main> searchMain(String search) {
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Main> list = new MainDao().searchMain(conn,search);
		JDBCTemplate.close(conn);
		return list;	
	}

}
