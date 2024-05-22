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
        body *{
            font-family: 'Jua';
        }
        
        body{
        	background-color: gray;
        }
         img.photo{
        	margin: 20px;
        	margin-left: 90px;
        	width: 200px;
        	height: 200px;
        	border: 2px solid gray;
       	}
</style>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	GameDao dao = new GameDao();
	GameDto dto = dao.getDate(num);
%>
</head>
<body>
	<div style="margin: 50px;">
		<form action="./gameupdateaction.jsp" method="post">
			<input type="hidden" name="num" value="<%=num%>">
			<table class="table table-bordered" style="width: 500px;" align="center">
				<caption align="top">
					<h1 align="center" style="color: black;"><b>플레이어 재등록</b></h1>
				</caption>
				<tr>
					<th class="table-secondary">이름</th>
					<td>
						<input type="text" name="name" class="form-control" value="<%=dto.getName()%>">
					</td>
				</tr>
				<tr>
					<th class="table-secondary">나이</th>
					<td>
						<input type="number" name="age" class="form-control"
						min="1" max="100" step="1" id="age" value="<%=dto.getAge()%>">
					</td>
				</tr>
				<tr>
					<th class="table-secondary">성별</th>
					<td>
						<label>
							<input type="radio" name="gender" value="남자" checked="checked">남자
						</label>
						<label>
							<input type="radio" name="gender" value="여자">여자
						</label>
					</td>
				</tr>
				<tr>
					<th width="100" class="table-secondary">프로필사진</th>
					<td>
						<select class="form-select" name="photo" id="photo">
							<option value="no"<%=dto.getPhoto().equals("no")?"selected":"" %>>기본프로필사진</option>
							<%
								for(int i=1;i<=10;i++)
								{
									String path = "../img/s"+i+".JPG";								
									%>
									<option value="<%=path %>"<%=dto.getPhoto().equals(path)?"selected":"" %>>프로필사진#<%=i %></option>
								<%}
							%>
						</select>
						<img src="../img/noimg.png" class="photo">
						<script type="text/javascript">
							$("#photo").change(function(){
								$(".photo").attr("src",$(this).val());
							});
						</script>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<button type="submit" class="btn btn-lg btn-outline-secondary"
						style="width: 120px;" onclick="location=href='gamestart.jsp'">저장하기</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>