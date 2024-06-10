<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link
	href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
</head>
<body>
	<main class="visual">
			<!-- <div class="category">
				&nbsp;커피 & 라떼
				catefory=1
			</div> -->
		<section class="menu-list">
		<c:forEach var="dto" items="${list}" varStatus="i">
			<div class="menu-item">
				<img src="../images/${dto.dphoto }" alt="음료이름">
				<h2>${dto.dname }</h2>
				<h2>${dto.dprice }</h2>
				<p>${dto.dtext }</p>
			</div>
			</c:forEach>
		</section>
	</main>
	
	<!--FOOTER-->
	<footer>
		<div class="inner">

			<ul class="menu">
				<li><a href="javascript:void(0)" class="green">개인정보처리방침</a></li>
				<li><a href="javascript:void(0)">홈페이지 이용약관</a></li>
				<li><a href="javascript:void(0)">위치정보 이용약관</a></li>
			</ul>

			<p class="copyright">
				&copy; <span class="this-year"></span> 2024 WOODO COFFEE. All Rights
				Reserved.
			</p>

		</div>
	</footer>

	<div id="to-top">
		<div class="material-icons">arrow_upward</div>
	</div>
</body>
</html>