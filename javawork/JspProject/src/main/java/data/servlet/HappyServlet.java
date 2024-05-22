package data.servlet;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HappyServlet
 */
@WebServlet("/study4")
public class HappyServlet extends HttpServlet {
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<String> list1 = Arrays.asList("orange","green","pink","magenta","tomato");
		request.setAttribute("list1", list1);
		//문자열 저장
		request.setAttribute("flowers", "장미꽃,안개꽃,다알리아,프리지아,국화꽃,채송화,칸나");
		
		//test4.jsp로 포워드 이동(url 안바뀜, response, request 그대로 전달)
		RequestDispatcher rd = request.getRequestDispatcher("./day0513/test4.jsp");
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
