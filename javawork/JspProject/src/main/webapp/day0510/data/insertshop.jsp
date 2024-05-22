<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="dao" class="data.dao.ShopDao"></jsp:useBean>
<jsp:useBean id="dto" class="data.dto.ShopDto"></jsp:useBean>
<!-- 이름이 같은 데이터를 dto에 넣는다 -->
<jsp:setProperty property="*" name="dto"></jsp:setProperty>

<%
	dao.insertShop(dto);
%>
