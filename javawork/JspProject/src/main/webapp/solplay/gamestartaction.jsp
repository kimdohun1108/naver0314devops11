<%@page import="data.dao.GameDao"%>
<%@page import="data.dto.GameDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("utf-8");
	
	int num=Integer.parseInt(request.getParameter("num"));
	int count = Integer.parseInt(request.getParameter("count"));
	
	GameDto dto = new GameDto();
	dto.setNum(num);
	dto.setCount(count);
	
	GameDao dao = new GameDao();
	dao.insertGame(dto);
	
	response.sendRedirect("gamelist.jsp?num="+num);
%>