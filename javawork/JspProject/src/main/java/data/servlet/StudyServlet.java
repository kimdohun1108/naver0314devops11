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

import data.dao.ShopDao;
import data.dto.ShopDto;

/**
 * Servlet implementation class StudyServlet
 */
//
@WebServlet("/study3")
//study3을 실행하면 StudyServlet이 호출
public class StudyServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<String> list1 = Arrays.asList("orange","green","pink","magenta","tomato");
		ShopDao dao = new ShopDao();
		List<ShopDto> shoplist = dao.getShopDatas();
		
		request.setAttribute("list1", list1);
		request.setAttribute("shoplist", shoplist);
		//경로때문에 ..을 .으로 변경해서 보내기
		//for문쓰는이유 : 사진마다 .으로 바꿔줘야하기때문에
		for(ShopDto dto:shoplist) 
		{
			dto.setSphoto(dto.getSphoto().replace("..", "."));
		}
		
		//test3.jsp로 포워드 이동(url 안바뀜, response, request 그대로 전달)
		RequestDispatcher rd = request.getRequestDispatcher("./day0513/test3.jsp");
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
