<%@page import="data.dao.GameDao"%>
<%@page import="data.dto.GuestDto"%>
<%@page import="data.dao.GuestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	GuestDto dto = new GuestDto();
	dto.setNickname(request.getParameter("nickname"));
	dto.setAvata(request.getParameter("avata"));
	dto.setContent(request.getParameter("content"));
	GuestDao dao = new GuestDao();
	dao.insertGuest(dto);
%>
