package data.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.dao.SawonDao;
import data.dto.SawonDto;

/**
 * Servlet implementation class SawonServlet
 */
//경로 파일을 하나 더 만들어서 해보기
@WebServlet("/bitcamp/sawon")
public class SawonServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		SawonDao dao = new SawonDao();
		List<SawonDto> list = dao.getAllSawons();
		
		request.setAttribute("list", list);
	
		//test5.jsp로 포워드 이동(url 안바뀜, response, request 그대로 전달)
		RequestDispatcher rd = request.getRequestDispatcher("../day0513/sawonlist.jsp");
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
