<%@page import="data.dao.GameDao"%>
<%@page import="data.dto.GuestDto"%>
<%@page import="data.dao.GuestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int num = Integer.parseInt(request.getParameter("num"));
	GuestDto dto = new GuestDto();
	dto.setNickname(request.getParameter("nickname"));
	dto.setContent(request.getParameter("content"));
	GuestDao dao = new GuestDao();
	dao.updateGuest(dto);
%>
