<%@page import="data.dao.GameDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	GameDao dao = new GameDao();
	dao.deleteGame(num);
	response.sendRedirect("gamelist.jsp");
%>
