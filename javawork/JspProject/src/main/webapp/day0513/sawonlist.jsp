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
	<h5 class="alert alert-success">비트캠프 사원 목록</h5>
	<!-- 
		table을 이용해서 사원목록 출력 
		번호|사진|사원명|부서명|나이|입사일 순서로 출력
	-->
	<fmt:requestEncoding value="utf-8"/>
	<form action="./sawon" method="post">
		<b>부서명 입력</b>
		<input type="text" name="search" style="width:120px;"value="${param.search}">
		<button type="submit">검색</button>
	</form>
	<hr>
	<h2>${param.search} 부서직원검색결과</h2>
	<table class="table table-info" style="width: 700px;">
		<tr>
			<th>번호</th>
			<th>사진</th>
			<th>사원명</th>
			<th>부서명</th>
			<th>나이</th>
			<th>입사일</th>
		</tr>
		<c:forEach var="s" items="${list }" varStatus="n">
			<c:if test="${s.buseo==param.search or param.search==''}">
				<tr>
					<td>${n.count }</td>
					<td>
						<c:if test="${s.photo=='no' }">
							<img width="100" height="100" src="../img/noimg.png">
						</c:if>
						<c:if test="${s.photo!='no' }">
							<img width="100" height="100" src="${s.photo }">
						</c:if>
					</td>
					<td>${s.name }</td>
					<td>
						${s.buseo }
					</td>
					<td>${s.age }</td>
					<td>${s.birthday }</td>
				</tr>
			</c:if>
		</c:forEach>
	</table>
</body>
</html>