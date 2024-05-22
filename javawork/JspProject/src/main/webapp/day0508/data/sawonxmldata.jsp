<?xml version="1.0" encoding="UTF-8"?>
<!-- 1행에 xml 꼭 넣어줘야함  -->
<%@page import="data.dto.SawonDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.SawonDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	SawonDao dao = new SawonDao();
	//전체사원 데이터 가져오기
	List<SawonDto> list = dao.getAllSawons();
%>
<sawonlist>
	<%
		for(SawonDto dto:list)
		{%>
			<sawon num="<%=dto.getNum() %>">
				<name><%=dto.getName() %></name>
				<buseo><%=dto.getBuseo() %></buseo>
				<age><%=dto.getAge() %></age>
				<addr><%=dto.getAddr() %></addr>
				<birthday><%=dto.getBirthday() %></birthday>
				<photo><%=dto.getPhoto() %></photo>
				<gender><%=dto.getGender() %></gender>
			</sawon>
		<%}
	%>
</sawonlist>