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
</head>
<c:set var="root" value="<%=request.getContextPath()%>" />
<script type="text/javascript">
6
</script>
<body>
	<%-- <form action="./loginon" id="login">
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
	</form> --%>
	
	<section class="signin">

    <h1>로그인</h1>
    <div class="signin__card">
      <h2>
        WOODO COFFEE에 오신 것을 환영합니다.
      </h2>
      <form action="./loginon" id="login">
<%--       	<input type="checkbox" name=saveid
      	${sessionScope.saveid==null or sessionScope.saveid=='no'?"":"checked"}>&nbsp;아이디저장 --%>
        <input type="text" name="id" value="${sessionScope.saveid!=null and sessionScope.saveid=='yes'?sessionScope.loginid:''}" placeholder="아이디를 입력하세요." />
        <input type="password" name="passwd" placeholder="비밀번호를 입력하세요." />
        <input type="submit" value="로그인" />
        <p>
          * 비밀번호를 타 사이트와 같이 사용할 경우 도용 위험이 있으니, <br/>
          정기적으로 비밀번호를 변경하세요!
        </p>
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