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
   <c:set  var="root" value="<%=request.getContextPath()%>"/>
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
$(function(){
	//로그아웃 버튼 이벤트
	$("#delete").click(function(){
		$.ajax({
			type:"get",
			dataType:"text",
			url:`${root}/coffee/logout`,
			success:function(){
				//전체페이지 새로고침
				location.href=`${root}/`;
			}
		});
	});
});
</script>
<body>
 <%-- <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<a href="${root }/coffee/update">정보수정</a>
	<a>계정삭제</a>
	<a href="${root }/coffee/order">주문현황</a>  --%>
	
	<section class="signin">

    <h1>회원정보</h1>
    <div class="signin__card">
      <h2>
         ${sessionScope.loginid }님 환영합니다
      </h2>
      <form>
        <button class="dtlbtn" type="button" onclick="location.href='${root }/coffee/update'">정보수정</button>
        <button class="dtlbtn" type="button" id="delete" onclick="del()">계정삭제</button>
        <button class="dtlbtn" type="button">주문현황</button>
        </form>
    </div>

  </section> 
   <!--FOOTER-->
  <footer>
    <div class="inner">

      <ul class="menu">
        <li><a href="javascript:void(0)" class="green">개인정보처리방침</a></li>
        <li><a href="javascript:void(0)">홈페이지 이용약관</a></li>
        <li><a href="javascript:void(0)">위치정보 이용약관</a></li>
      </ul>

      <p class="copyright">
        &copy; <span class="this-year"></span> 2024 WOODO COFFEE. All Rights Reserved.
      </p>

    </div>
  </footer>

  <div id="to-top">
    <div class="material-icons">arrow_upward</div>
  </div>
</body>
</html>