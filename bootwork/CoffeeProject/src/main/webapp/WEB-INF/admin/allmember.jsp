<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link
	href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<style>

</style>
</head>
<script type="text/javascript">
function del()
{
	let a = confirm("정말 삭제?");
	if(a)
	{
		location.href=`${root}/coffee/delete`;
	}
}
</script>
<body>
	<section class="order">
    <div class="order__card">
	
	<table class="memtable">
		<caption align="top">
			 <h3><b>회원명단</b></h3><hr><br>
        <h4>총 ${totalCount}명의 회원이 있습니다</h4><br>
		</caption>
		<tr>
			<th width="80">번호</th>
			<th width="120">회원명</th>
			<th width="100">아이디</th>
			<th width="100">닉네임</th>
			<th width="300">핸드폰</th>
			<th>블랙리스트</th>
		</tr>
		<c:forEach var="dto" items="${list}" varStatus="i">
			<tr>
				<td align="center">${i.count}</td>
				<td>${dto.name}</td>
				<td>${dto.id}</td>
				<td>${dto.nick}</td>
				<td>${dto.hp}</td>
				<td align="center">
					<button type="button" class="btn btn-sm btn-warning"
						onclick="del()" id="delete">삭제</button>
				</td>
			</tr>
		</c:forEach>
	</table>
	</div>
  </section>
</body>
</html>