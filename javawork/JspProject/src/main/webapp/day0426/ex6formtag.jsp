<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<h5>JSP로 폼태그 읽기</h5>
	<!-- method : get, post -->
	<form action="./ex6action.jsp" method="get">
		<b>이름</b> :
		<input type="text" name="name" required="required">
		<br>
		<br>
		<b>사진</b>
		<select name="photo">
			<option value="../img/17.jpg">신민아</option>
			<option value="../img/15.jpg">설현</option>
			<option value="../img/18.jpg">신세경</option>
			<option value="../img/19.jpg">수지</option>
		</select>
		<br>
		<br>
		<!-- submit일때만 required사용가능 -->
		<!-- <button type="submit">서버전송</button> -->
		<input type="image" src="../img/mycar13.png" style="sidth: 70px">
	</form>
</body>
</html>