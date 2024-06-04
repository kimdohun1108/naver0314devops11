<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
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
<c:set var="root" value="<%=request.getContextPath()%>" />
<script type="text/javascript">
	$(function(){
		//로그인 이벤트
		$("#login").submit(function(e){
			//폼안의 입력값 읽기
			let fdata = $(this).serialize();
			//alert(fdata);
			$.ajax({
				type:"get",
				dataType:"json",
				url:`${root}/coffee/loginon`,
				data:fdata,
				success:function(data){
					if(data.status != 'success'){
                        alert("아이디 또는 비밀번호가 맞지 않습니다.");
                    } else {
                        // 로그인 성공 시 페이지 이동 등 원하는 동작
                        alert("로그인 성공!");
                    }
				}
			});
		});
	});
</script>
<body>
	login
	<form action="./loginon" id="login">
		<div>
			<div>
				<h4>회원 로그인</h4>
			</div>
			<div>
				<table>
					<caption align="top">
						<input type="checkbox" name=saveid
						${sessionScope.saveid==null or sessionScope.saveid=='no'?"":"checked"}>&nbsp;아이디저장
					</caption>
					<tr>
						<th width="80">아이디</th>
						<td>
							<input type="text" name="id" value="${sessionScope.saveid!=null and sessionScope.saveid=='yes'?sessionScope.loginid:''}">
						</td>
					</tr>
					<tr>
						<th width="80">비밀번호</th>
						<td>
							<input type="password" name="passwd">
						</td>
					</tr>
				</table>
				<div>
					<button type="submit">로그인</button>
				</div>
			</div>
		</div>
	</form>
</body>
</html>