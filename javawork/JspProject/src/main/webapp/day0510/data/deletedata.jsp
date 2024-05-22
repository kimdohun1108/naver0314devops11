<%@page import="data.dao.ShopDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int shopidx = Integer.parseInt(request.getParameter("shopidx"));
	ShopDao dao = new ShopDao();
	dao.deleteShop(shopidx);
%>