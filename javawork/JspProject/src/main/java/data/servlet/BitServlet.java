package data.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BitServlet
 */
@WebServlet("/study2")
//study2을 실행하면 BitServlet이 호출
public class BitServlet extends HttpServlet {
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//request에 값 저장 (변수명, 값)
		request.setAttribute("today", new Date());
		request.setAttribute("money", 5678960);
		request.setAttribute("score", 89.345678);
		
		//test2.jsp로 포워드 이동(url 안바뀜, response, request 그대로 전달)
		RequestDispatcher rd = request.getRequestDispatcher("./day0513/test2.jsp");
		rd.forward(request, response); //response, request 전달 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
