package free.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import free.model.service.FreeService;
import free.model.vo.FreeViewData;

/**
 * Servlet implementation class FreeViewServlet
 */
@WebServlet(name = "FreeView", urlPatterns = { "/freeView" })
public class FreeViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FreeViewServlet() {
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
		int freeNo = Integer.parseInt(request.getParameter("freeNo"));
		// 3. 비지니스 로직
		FreeViewData fvd = new FreeService().selectFreeView(freeNo);
		// 4. 결과처리
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/free/freeView.jsp");
		request.setAttribute("f", fvd.getF());
		request.setAttribute("list", fvd.getList());
		
		//System.out.println("FreeViewServlet : " + fvd.getF().getFreeTitle() + fvd.getList().get(0).getFcNo());
		
		rd.forward(request, response);
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
