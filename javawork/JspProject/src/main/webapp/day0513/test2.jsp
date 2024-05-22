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
	<h5 class="alert alert-danger">JSTL 공부 #2</h5>
	<h5>서블릿에서 request에 저장된 변수 그대로 출력하기</h5>
	<h6>날짜 : ${today }</h6>
	<h6>급여 : ${money }</h6>
	<h6>점수 : ${score }</h6>
	<hr>
	<h5>JSTL의 fmt양식을 이용해서 다양하게 출력</h5>
	<h6 class="alert alert-info">다양한 날짜 양식들</h6>
	<!-- formatDate의 pattern은 날짜타입?  -->
	<h6><fmt:formatDate value="${today }" pattern="yyyy-MM-dd" var="date1"/></h6>
	<h6><fmt:formatDate value="${today }" pattern="yyyy-MM-dd HH:mm"/></h6>
	<h6><fmt:formatDate value="${today }" pattern="yyyy-MM-dd a hh:mm" var="date2"/></h6>
	<h6><fmt:formatDate value="${today }" pattern="yyyy-MM-dd EEEE"/></h6>
	<h3>(var)변수명 입력시 출력 방법</h3>
	<h4>date1 : ${date1 }</h4>
	<h4>date2 : ${date2 }</h4>
	<h6 class="alert alert-success">다양한 숫자 양식들</h6>
	<h6>
		<!-- 심볼 이미지가 깨짐 -->
		<!-- type : currency = 소수점까지 나옴,앞에 symbol나옴 -->
		<fmt:formatNumber value="${money }" type="currency"/>원
	</h6>
	<h6>
		<!-- type : number = 소수점 안나온다 -->
		<fmt:formatNumber value="${money }" type="number"></fmt:formatNumber>원
	</h6>
	<h6>
		<!-- currencySymbol이 나오는 문자 : $ -->
		<fmt:formatNumber value="${money }" type="currency" currencySymbol="$"/>
	</h6>
	<h6>
		<!-- maxFracttionDigits : 소수점 이하 두자리까지만 나오게 -->
		<fmt:formatNumber value="${score }" maxFractionDigits="2"/>
	</h6>
	<h6>
		<!-- 위와 같다 -->
		<fmt:formatNumber value="${score }" pattern="0.00"/>
	</h6>
	<hr>
	<c:set var="num3" value="45.2"></c:set>
	<c:set var="num4" value="0.034"></c:set>
	<h6>num3 : ${num3 }</h6>
	<h6>num4 : ${num4 }</h6>
	<h6>
		<fmt:formatNumber value="${num3 }" pattern="0.00"></fmt:formatNumber>
	</h6>
	<h6>
		<!-- 소수점이 0이면 지워서 나온다 -->
		<fmt:formatNumber value="${num3}" pattern="0.##"></fmt:formatNumber>
	</h6>
	<h6>
		<fmt:formatNumber value="${num4}" type="percent" maxFractionDigits="2"></fmt:formatNumber>
	</h6>
</body>
</html>