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
	<table class="table table-bordered" style="width: 100%">
		<caption align="top"><h3><b>[구구단]</b></h3></caption>
		<tr class="table-light">
		<%
			for(int dan=2;dan<=9;dan++)
			{%>
				<td align="center"><b><%=dan %>단</b></td>
			<%}
		%>
		</tr>
		<%
			for(int i=1;i<=9;i++)
			{%>
			<tr>
				<%
					for(int dan=2;dan<=9;dan++)
					{%>
						<td align="center">	
							<%=dan %>X<%=i %>=<%=dan*i %>
						</td>
					<%}
				%>
			</tr>
			<%}
		%>
	</table>
</body>
</html>