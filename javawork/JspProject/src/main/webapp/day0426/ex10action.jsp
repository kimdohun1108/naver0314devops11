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
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String foodphoto = request.getParameter("foodphoto");
	String member = request.getParameter("member");
	String grade = request.getParameter("grade");
	String arr[] = foodphoto.split(",");
%>

<body>
	<div style="margin: 30px; font-size: 20px;">
		음식이름 : <%=name %><br>
		음식사진 : <img src="<%=arr[0]%>" width="60" height="60"><br>
		가격 : <%=arr[1] %><br>
		만족도 : <%=grade %><br>
		우수회원 : <%=member==null?"일반회원":"우수회원" %><br>
		<br>
		<a href="javascript:history.back()">다시 선택 #1</a>
		<br>
		<br>
		<a href="ex10formtag.jsp">다시 선택 #2</a>
	</div>
</body>
</html>