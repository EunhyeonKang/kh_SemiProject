package donation;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;

public class DonationService {

	public DonationPageData selectDonationList(int reqPage) {
		Connection conn = JDBCTemplate.getConnection();
		//1. 한페이지에 게시물을 몇개 보여줄지 : 한페이지당 10개씩 보여줌
		int numPerPage = 10;
		//시작 과 끝
		int end = reqPage * numPerPage;
		int start = end-numPerPage + 1;
		
		//요청한 페이지의 게시물을 조회
		DonationDao dao = new DonationDao();
		ArrayList<DonationList> list = dao.selectDonationList(conn,start,end);
		
		
		
		
		//페이지 네비게이션 제작
		//1) 전체 페이지수를 구해야함 100/10
		int totalCount = dao.totalCount(conn);
		//전체 페이지 수 계산
		int totalPage = 0;
		if(totalCount%numPerPage == 0) {
			totalPage = totalCount/numPerPage;
		}else {
			totalPage = totalCount/numPerPage+1;
		}
		//페이지 네비 길이지정
		int pageNaviSize = 5;
		//1~5페이지 요청시 페이지 네비 시작번호 : 1
		//6~10페이지 요청하면 페이지 네비 시작 : 6
		//11~15페이지 요청하면 페이지 네비 시작  : 11
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize + 1;
		//페이지네비 시작
		String pageNavi = "<ul class='pagination pagination-lg'>";
		//페이지 네비 시작번호가 1이 아닌경우는 이전버튼 생성
		if(pageNo != 1) {
			pageNavi += "<li class='page-item'>";
			pageNavi += "<a class='page-link' href='/donationList?reqPage="+(pageNo-1)+"'>&lt;</a></li>";
		}
		//페이지 숫자 생성
		for(int i=0; i<pageNaviSize; i++) {	//1/2/3/4/5 페이지숫자를 보여주기위해 반복하는것
			if(pageNo == reqPage) {
				pageNavi += "<li class='page-item active'>";	//눌러진페이지 엑티브 ex)3페이지 누르면 3이 엑티브되게
				pageNavi += "<a class='page-link' href='/donationList?reqPage="+pageNo+"'>"+pageNo+"</a></li>";
			}else {												//reqPage는 누른페이지 지정
				pageNavi += "<li class='page-item'>";//누르지 않는 페이지들
				pageNavi += "<a class='page-link' href='/donationList?reqPage="+pageNo+"'>"+pageNo+"</a></li>";
			}
			pageNo++;	
			if(pageNo > totalPage) { //다음페이지가 없으면 break	
				break;
			}
		}
		
		//다음버튼 생성
		if(pageNo <=totalPage) {
			pageNavi += "<li class='page-item'>";
			pageNavi += "<a class='page-link' href='/donationList?reqPage="+(pageNo)+"'>&gt;</a></li>";
		}
		pageNavi += "</ul>";
		
		JDBCTemplate.close(conn);
		DonationPageData dpd = new DonationPageData(list,pageNavi);	//보내는 순서 중요!!
		return dpd;
		
	}

//	public Member loginCheck(String id, String pw) {
//		Connection conn = JDBCTemplate.getConnection();
//		
//		Member m = new DonationDao().loginCheck(conn,id,pw);
//		
//		
//		JDBCTemplate.close(conn);
//		return m;
//	}

	public int insertList(Donation d, String pa_lev, DonationList list) {
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new DonationDao().insertList(d, pa_lev,conn,list);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}




}

