<%@page import="java.util.List"%>
<%@page import="data.dto.GameDto"%>
<%@page import="data.dao.GameDao"%>
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
body{ 
         background-color: gray;
	}
        body *{
            font-family: 'Jua';
        }
        img *{
        	
        }
</style>
</head>
<%
	GameDao dao = new GameDao();
	List<GameDto> list = dao.getAllGame();
%>
<body>
	<div style="margin: 50px;">
		<div style="font-size: 90px; color: yellow;" align="center"><b>명예의 전당</b></div>
	</div>
	<div style="margin: 10px;" align="center">
		<button type="button" class="btn btn-sm btn-secondary"
		style="width: 150px" onclick="location.href='gamelist.jsp'">돌아가기</button>
	</div>
	<table class="table table-striped table-warning">
		<tr>
			<th>전적</th>
			<th>연승</th>
			<th>아름</th>
			<th>나이</th>
			<th>성별</th>
			<th>아이콘</th>
		</tr>
		<%
			for(GameDto dto:list)
			{%>
				<tr>
					<td>1승 2패</td>
					<td>1연승</td>
					<td><%=dto.getName() %></td>
					<td><%=dto.getAge() %></td>
					<td><%=dto.getGender() %></td>
					<td>
						<button type="button">
							<img src="<%=dto.getPhoto() %>" style="width: 20px; height: 20px;">
						</button>
					</td>
				</tr>
			<%}
		%>
	</table>
</body>
</html>