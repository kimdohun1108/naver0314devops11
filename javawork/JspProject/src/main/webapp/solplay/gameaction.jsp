<%@page import="data.dao.GameDao"%>
<%@page import="data.dto.GameDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String photo = request.getParameter("photo");
	//int count = Integer.parseInt(request.getParameter("count"));
	
	
	GameDto dto = new GameDto();
	dto.setName(name);
	dto.setAge(age);
	dto.setGender(gender);
	dto.setPhoto(photo);
	//dto.setCount(count);
	
	GameDao dao = new GameDao();
	dao.insertGame(dto);
	
	response.sendRedirect("gamelist.jsp");
%>