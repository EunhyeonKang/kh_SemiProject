package free.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import free.model.service.FreeService;

/**
 * Servlet implementation class insertLoveServlet
 */
@WebServlet(name = "insertLove", urlPatterns = { "/insertLove" })
public class insertLoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public insertLoveServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1. 인코딩
		request.setCharacterEncoding("utf-8");
		// 2. 값 추출
		String freeWriter = request.getParameter("freeWriter");
		int freeNo = Integer.parseInt(request.getParameter("freeNo"));
		// 3. 비지니스 로직
		int result = new FreeService().insertFreeLike(freeNo, freeWriter);

//		if (result > 0) {
//			System.out.println("좋아요 추가 성공");
//		} else {
//			System.out.println("좋아요 추가 실패");
//		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
