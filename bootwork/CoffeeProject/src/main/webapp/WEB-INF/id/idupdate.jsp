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
</head>
<body>
	idupdate coffee/update
	<form action="./updateinsert" method="post" enctype="multipart/form-data" onsubmit="return check()">
		<table class="table table-bordered" style="width: 500px;">
			<caption align="top">
				<h3><b>정보 수정</b></h3>
			</caption>
			<tr>
				<th width="100" class="table-info">이름</th>
				<td colspan="2">
					<input type="text" name="name" class="form-control" required="required" value="${list.name }">
				</td>
			</tr>
			<tr>
				<th width="100" class="table-info">아이디</th>
				<td colspan="2">
					<div class="input-group">
						<input type="text" name="id" id="id" class="form-control" required="required" value="${list.id }">
						&nbsp;
						<button type="button" class="btn btn-sm btn-danger" id="btncheckid">중복확인</button>
					</div>
				</td>
			</tr>
			<tr>
				<th width="100" class="table-info">비밀번호</th>
				<td width="200">
					<!--maxlength : 글자 최대  -->
					<input type="password" name="passwd" class="form-control" required="required" maxlength="8" value="${list.passwd }">
				</td>
			</tr>
			<tr>
				<th width="100" class="table-info">핸드폰번호</th>
				<td width="200" colspan="2">
					<input type="tel" name="hp" class="form-control" required="required" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="xxx-xxxx-xxxx" value="${list.hp }">
				</td>
			</tr>
			<tr>
				<th width="100" class="table-info">nick</th>
				<td colspan="2">
					<div class="input-group">
						<input type="text" name="nick" id="nick" class="form-control" required="required" value="${list.nick }">
						&nbsp;
						<button type="button" class="btn btn-sm btn-danger" id="btnchecknick">중복확인</button>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<button type="reset" class="btn btn-sm btn-outline-danger" style="width: 100px;">초기화</button>
					<button type="submit" class="btn btn-sm btn-outline-danger" style="width: 100px;">정보수정</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>