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
        #fire{
         	width: 1000px;
         	height: 50px;
        	background-image: url(../img/fire23.jpg);
        }
</style>
</head>
<%
	int num = Integer.parseInt(request.getParameter("num"));

	GameDao dao = new GameDao();
	GameDto dto = dao.getDate(num);
%>
<body>
	<div>
		<h1 align="center"><b><%=dto.getName() %> 플레이어</b></h1>
		<table align="center">
			<tr>
				<td width="300">
					<img src="<%=dto.getPhoto()%>" width="500" height="500">
				</td>
				<td>
					<div>나이 : <%=dto.getAge() %></div>
					<div>성별 : <%=dto.getGender() %></div>
					<div>전적 : 1승 2패</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div align="center" style="margin: 20px;" id="fire"><h2>최고기록 : 1연승!!</h2></div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="button" class="btn btn-sm btn-success"
					style="width: 150px" onclick="location.href='gamelist.jsp'">돌아가기</button>
					<button type="button" class="btn btn-sm btn-success"
					style="width: 150px" onclick="location.href='gameupdateform.jsp?num=<%=dto.getNum()%>'">정보수정</button>
					<button type="button" class="btn btn-sm btn-success"
					style="width: 150px" id="delgame" number="<%=dto.getNum() %>" gamename="<%=dto.getName()%>">삭제</button>
				</td>
			</tr>
		</table>
	</div>
	<script type="text/javascript">
		$("#delgame").click(function() {
			let name = $(this).attr("gamename");
			let num = $(this).attr("number");
			
			let a = confirm(name+"님 정보를 삭제할까요?");
			if(a)
			{
				location.href="gamedelete.jsp?num="+num;
			}	
		});
	</script>
</body>
</html>