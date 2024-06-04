<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WOODO COFFEE</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap" rel="stylesheet">
   <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<style>
	.loginarea{
		right: 30px;	
		position: absolute;
		top: 50px;
	}
</style>
</head>
<script type="text/javascript">
	$(function(){
		//로그아웃 버튼 이벤트
		$("#logout").click(function(){
			$.ajax({
				type:"get",
				dataType:"text",
				url:`${root}/coffee/logout`,
				success:function(){
					//전체페이지 새로고침
					location.reload();
				}
			});
		});
	});
</script>
<body>
	<c:set  var="root" value="<%=request.getContextPath()%>"/>
	<div>
		<a href="${root }/">소식</a>
		<a href="${root }/coffee/menu">메뉴소개</a>
		<a href="${root }/coffee/order">주문하기</a>
	</div>
	
	<div class="loginarea">
		<!-- 로그인이 안되었을떄 -->
		<!-- 로그인,회원가입 -->
		<c:if test="${sessionScope.loginok==null }">
			<button type="button" onclick="location.href='${root}/coffee/login'">Sign In</button>
			<button type="button" onclick="location.href='${root}/coffee/form'">회원가입</button>
		</c:if>
		<!-- 로그인이 되었을때 -->
		<!-- 로그아웃,정보수정,계정삭제 -->
		<c:if test="${sessionScope.loginok!=null }">
			<b style="font-size: 20px;">${sessionScope.loginid }님</b>
			<button type="button" id="logout">로그아웃</button>
			<button type="button" onclick="location.href='${root}/coffee/detail'">mypage</button>
		</c:if>
	</div>
</body>
</html>