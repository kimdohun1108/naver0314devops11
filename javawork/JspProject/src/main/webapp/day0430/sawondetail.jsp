<%@page import="data.dto.SawonDto"%>
<%@page import="data.dao.SawonDao"%>
<%@page import="data.dto.ShopDto"%>
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
        body *{`
            font-family: 'Jua';
        }
</style>
</head>
<%
	//num int타입 읽기
	int num = Integer.parseInt(request.getParameter("num"));
	
	SawonDao dao = new SawonDao();
	SawonDto dto = dao.getData(num);
	
%>
<body>
	<div style="margin: 10px; width: 500px;">
		<h2><b><%=dto.getName() %> 	사원님</b></h2>
		<table>
			<tr>
				<td width="300">
					<img src="<%=dto.getPhoto()%>"
					style="border: 10px groove orange; margin: 10px; width:270px;">
				</td>
				<td>
					<div>나이 : <%=dto.getAge() %></div>
					<div>주소 : <%=dto.getAddr() %></div>
					<div>생년월일 : <%=dto.getBirthday() %></div>
					<div>부서 : <%=dto.getBuseo() %></div>
					<div>성별 : <%=dto.getGender() %></div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="button" class="btn btn-sm btn-warning" style="width: 80px;"
					onclick="location.href='sawonform.jsp'">사원추가</button>
					<button type="button" class="btn btn-sm btn-warning" style="width: 80px;"
					onclick="location.href='sawonlsit.jsp'">사원목록</button>
					<button type="button" class="btn btn-sm btn-warning" style="width: 80px;"
					onclick="location.href='sawonupdateform.jsp?num=<%=dto.getNum()%>'">정보수정</button>
					<button type="button" class="btn btn-sm btn-warning" style="width: 80px;"
					id="delsawon" num="<%=dto.getNum() %>" sawonname="<%=dto.getName()%>">사원삭제</button>
				</td> 
			</tr>
		</table>
	</div>
	<script type="text/javascript">
	$("#delsawon").click(function() {
		let name = $(this).attr("sawonname");
		let num = $(this).attr("num");
		//let a = confirm(`\${name} 사원정보를 삭제할까요?`);
		let a = confirm(name+" 사원정보를 삭제할까요?");
		if(a)
		{
			location.href="sawondelete.jsp?num="+num;//페이지 이동
		}
	});
	</script>
</body>
</html>