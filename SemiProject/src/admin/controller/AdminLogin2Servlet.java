//package admin.controller;
//
//import java.io.IOException;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import admin.model.service.AdminService;
//import admin.model.vo.Admin;
//
///**
// * Servlet implementation class AdminLogin2Servlet
// */
//@WebServlet(name = "AdminLogin2", urlPatterns = { "/adminLogin2" })
//public class AdminLogin2Servlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public AdminLogin2Servlet() {
//        super();
//        // TODO Auto-generated constructor stub
//    }
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("utf-8");
//		String adminId = request.getParameter("adminId");
//		String adminPw = request.getParameter("adminPw");
//		Admin a = new AdminService().selectOneAdmin(adminId,adminPw);
//		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp");
//		
//		if(a!=null) {
//			//로그인 성공
//			//정회원 또는 관리자인경우 -> 로그인 성공인 경우 -> 세션에 데이터 등록
//			//세션 객체를 생성
//			HttpSession session = request.getSession();
//			session.setAttribute("a", a);
//			request.setAttribute("msg", "로그인성공");
//
//		}else {
//			//로그인 실패한 경우
//			request.setAttribute("msg", "아이디 또는 비밀번호를 확인하세요");
//		}
//		//alert으로 안내후 이동할 페이지 지정
//		request.setAttribute("loc", "/");
//		//페이지 이동                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
//		rd.forward(request, response);
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}
//
//}
