<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<style>
        body *{
            font-family: 'Jua';
        }
</style>
</head>
<body>
	<h5 class="alert alert-danger">JSTL 공부 #5- if, choose</h5>
	<fmt:requestEncoding value="utf-8"/>
	<form action="./study5" method="post">
		<input type="text" name="nara">
		<br>
		<button type="submit">전송</button>
	</form>
	<!-- param.name명 : input으로 전송받은 값 -->
	<h6>입력값은 ${param.nara }</h6>
	<c:choose>
		<c:when test="${param.nara=='하와이' }">
			<img src="./img/s1.JPG" width="50px">
			<b style="color: red; background-color: yellow;">
				하와이하와이하와이하와이하와이하와이하와이하와이
			</b>
		</c:when>
		<c:when test="${param.nara=='미국' }">
			<img src="./img/s2.JPG" width="50px">
			<b style="color: green; background-color: pink;">
				미국미국미국미국미국미국미국미국미국미국미국
			</b>
		</c:when>
		<c:when test="${param.nara=='한국' }">
			<img src="./img/s3.JPG" width="50px">
			<b style="color: blue; background-color: skyblue;">
				한국한국한국한국한국한국한국한국한국한국한국한국
			</b>
		</c:when>
		<c:when test="${param.nara=='일본' }">
			<img src="./img/s4	.JPG" width="50px">
			<b style="color: gray; background-color: orange;">
				일본일본일본일본일본일본일본일본일본일본일본
			</b>
		</c:when>
		<c:otherwise>
			<img src="./img/s10	.JPG" width="50px">
			<b style="color: black; background-color: white;">
				${param.nara }는 정보없음
			</b>
		</c:otherwise>
	</c:choose>
</body>
</html>