3<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<script type="text/javascript">
	let jungbok = false;
	let jungbok2 = false;
	$(function(){
		//아이디 중복버튼 이벤트
		$("#btncheckid").click(function(){
			if($("#id").val()==''){
				alert("가입할 아이디 입력!!");
				return;
			}
			$.ajax({
				type:"get",
				dataType:"json",
				url:"./idcheck",
				data:{"searchid":$("#id").val()},
				success:function(data){
					if(data.count==0)
					{
						alert("가입 가능한 아이디");
						jungbok = true;
					}
					else
					{
						alert("이미 가입한 아이디");
						jungbok = false;
						$("#id").val("");
					}
				}
			});
		});
		//아이디를 다시 입력시 중복확인시 다시 리셋 이벤트
		$("#id").keyup(function(){
			jungbok = false;
		});
		
		//닉네임 중복버튼 이벤트 
		$("#btnchecknick").click(function(){
			if($("#nick").val()==''){
				alert("닉네임 입력!!");
				return;
			}
			$.ajax({
				type:"get",
				dataType:"json",
				url:"./nickcheck",
				data:{"searchnick":$("#nick").val()},
				success:function(data){
					if(data.count==0)
					{
						alert("사용 가능한 닉네임");
						jungbok2 = true;
					}
					else
					{
						alert("이미 가입한 닉네임");
						jungbok2 = false;
						$("#nick").val("");
					}
				}
			});
		});
		//닉네임을 다시 입력시 중복확인시 다시 리셋 이벤트
		$("#nick").keyup(function(){
			jungbok2 = false;
		});
	}); 
	function check()
	{
		if(!jungbok)
		{
			alert("아이디 중복확인!!");
			return false; 
		}
	}
	function check2()
	{
		if(!jungbok2)
		{
			alert("닉네임 중복확인!!");
			return false; 
		}
	}
</script>
<body>
	<%-- <form action="./insert" method="post" enctype="multipart/form-data" onsubmit="return check()">
		<table class="table table-bordered" style="width: 500px;">
			<caption align="top">
				<h3><b>회원 가입</b></h3>
			</caption>
			<tr>
				<th width="100" class="table-info">이름</th>
				<td colspan="2">
					<input type="text" name="name" class="form-control" required="required">
				</td>
			</tr>
			<tr>
				<th width="100" class="table-info">아이디</th>
				<td colspan="2">
					<div class="input-group">
						<input type="text" name="id" id="id" class="form-control" required="required">
						&nbsp;
						<button type="button" class="btn btn-sm btn-danger" id="btncheckid">중복확인</button>
					</div>
				</td>
			</tr>
			<tr>
				<th width="100" class="table-info">비밀번호</th>
				<td width="200">
					<!--maxlength : 글자 최대  -->
					<input type="password" name="passwd" class="form-control" required="required" maxlength="8">
				</td>
			</tr>
			<tr>
				<th width="100" class="table-info">핸드폰번호</th>
				<td width="200" colspan="2">
					<input type="tel" name="hp" class="form-control" required="required" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="xxx-xxxx-xxxx">
				</td>
			</tr>
			<tr>
				<th width="100" class="table-info">nick</th>
				<td colspan="2">
					<div class="input-group">
						<input type="text" name="nick" id="nick" class="form-control" required="required">
						&nbsp;
						<button type="button" class="btn btn-sm btn-danger" id="btnchecknick">중복확인</button>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<button type="reset" class="btn btn-sm btn-outline-danger" style="width: 100px;">초기화</button>
					<button type="submit" class="btn btn-sm btn-outline-danger" style="width: 100px;">회원가입</button>
				</td>
			</tr>
		</table>
	</form> --%>
	<section class="signin">
    <h1>회원가입</h1>
      <div class="signin__card">
        <h2>WOODO COFFEE에 오신 것을 환영합니다.</h2>
        <form action="./insert" method="post" enctype="multipart/form-data" onsubmit="return check()">
          <input type="text" placeholder="이름" class="nockeck" name="name" />
          <div class="input-group">
              <input type="email" placeholder="아이디(이메일)" class="recheck" name="id" id="id" />
              <button type="button" id="btncheckid">중복확인</button>
          </div>
          <input type="password" placeholder="비밀번호" class="nockeck" name="passwd" />
          <div class="input-group">
              <input type="text" placeholder="닉네임" class="recheck" id="nick" name="nick" />
              <button type="button" id="btnchecknick">중복확인</button>
          </div>
          <input type="tel" placeholder="전화번호" class="nockeck" name="hp"/>
          <input type="submit" value="회원가입" />
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