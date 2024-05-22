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
 * Servlet implementation class HelloServlet
 */
//study1을 실행하면 HelloServlet이 호출
@WebServlet("/study1")
public class HelloServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//request에 값 저장 (변수명, 값)
		request.setAttribute("msg", "안녕하세요. 비트캠프입니다.");
		request.setAttribute("today", new Date());
		request.setAttribute("num1", 8);
		request.setAttribute("num2", 5);
		
		//test1.jsp로 포워드 이동(url 안바뀜, response, request 그대로 전달)
		RequestDispatcher rd = request.getRequestDispatcher("./day0513/test1.jsp");
		rd.forward(request, response); //response, request 전달 
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
