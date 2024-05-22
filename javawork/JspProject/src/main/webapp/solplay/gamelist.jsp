<%@page import="data.dto.GameDto"%>
<%@page import="java.util.List"%>
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
        
        div.zxc img{
        	border-radius: 20px;
        	width: 130px;
        	height: 150px;
        	margin-bottom: 10px;
        }
    
    
</style>
</head>
<%
	GameDao dao = new GameDao();
	List<GameDto> list = dao.getAllGame();
%>
<body>
	<div style="margin: 100px;">
		<div style="font-size: 150px;"align="center"><b>가위 바위 보</b></div>
	</div>
	<div align="center">
		<button type="button" class="btn btn-lg btn-secondary"
		onclick="location.href='gameform.jsp'">
			게임플레이어추가
		</button>
		<button type="button" class="btn btn-lg btn-secondary"
		onclick="location.href='gameodd.jsp'">
			순위
		</button>
	</div>
	<div class="zxc" style="display: flex; flex-wrap: wrap;">
		<%
			for(GameDto dto:list)
			{%>
				<div>
					<img src='<%=dto.getPhoto().equals("no")?"../img/noimg.png":dto.getPhoto()%>'>
					<%=dto.getName() %>플레이어
					<br>
					<button type="button" class="btn btn-sm btn-outline-danger"
					onclick="location.href='gamedetail.jsp?num=<%=dto.getNum()%>'">상세정보</button>
					<button type="button" class="btn btn-sm btn-outline-primary"
					onclick="location.href='gamestart.jsp?num=<%=dto.getNum()%>'">게임하기</button>
				</div>
			<%}
		%>
	</div>
</body>
</html>