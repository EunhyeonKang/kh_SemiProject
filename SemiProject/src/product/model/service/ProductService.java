package product.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;

import product.model.dao.ProductDao;
import product.model.vo.Product;
import product.model.vo.ProductPageData;

public class ProductService {

	public ProductPageData selectProductList(int reqPage) {
		Connection conn = JDBCTemplate.getConnection();
		int numPage = 9; 
		int end = reqPage*numPage;
		int start = end - numPage + 1;
		ProductDao dao = new ProductDao();
		ArrayList<Product> list = dao.selectProductList(conn,end,start);		
		int totalCount = dao.totalCount(conn);
		int totalPage = 0;
		if(totalCount%numPage == 0) {
			totalPage = totalCount/numPage;
		}else {
			totalPage = totalCount/numPage+1;
		}
		int naviSize = 5;
		int pageNo = ((reqPage-1)/naviSize)*naviSize+1;
		String pageNavi = "<ul class='pagination pagination-lg'>";
		if(pageNo != 1) {
			pageNavi += "<li class='page-item'>";
			pageNavi += "<a class='page-link' href='/productList?reqPage="+(pageNo-1)+"'>&lt</a></li>";
		}
		for(int i=0;i<naviSize;i++) {
			if(pageNo == reqPage) {
				pageNavi += "<li class='page-item active'>";
				pageNavi += "<a class='page-link' href='/productList?reqPage="+pageNo+"'>"+pageNo+"</a></li>";
			}else {
				pageNavi += "<li class='page-item'>";
				pageNavi += "<a class='page-link' href='/productList?reqPage="+pageNo+"'>"+pageNo+"</a></li>";
			}
			pageNo++;
			if(pageNo > totalPage) {		
				break;
			}
		}
		if(pageNo <= totalPage) {
			pageNavi += "<li class='page-item'>";
			pageNavi += "<a class='page-link' href='/productList?reqPage="+(pageNo)+"'>&gt</a></li>";
		}
		pageNavi += "</ul>";
		JDBCTemplate.close(conn);
		ProductPageData ppd = new ProductPageData(list,pageNavi);

		return ppd;
	}

	public int insertProduct(Product p) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new ProductDao().insertProduct(conn,p);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

	public Product selectOneProduct(int productNo) {
		Connection conn = JDBCTemplate.getConnection();
		Product p = new ProductDao().selectOneProduct(conn,productNo);
		JDBCTemplate.close(conn);
		return p;
	}

	public int updateProduct(Product p) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new ProductDao().updateProduct(conn,p);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

	public int deleteProduct(int productNo) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new ProductDao().deleteProduct(conn,productNo);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}
}
