package board.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.dao.SimpleBoardDao;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/board/delete")
public class DeleteServlet extends HttpServlet {
	SimpleBoardDao dao = new SimpleBoardDao();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//num,currentPage 를 읽는다
		int num = Integer.parseInt(request.getParameter("num"));
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		//삭제
		dao.deleteBoard(num);
		//리다이렉트 
		//"./list?currentPage="+currentPage 쓰는 이유는 현재페이지가 아닌 초기값 1페이지로 이동하기 때문에 저렇게 써줌
		response.sendRedirect("./list?currentPage="+currentPage);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
