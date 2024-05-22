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
	<h5>폼태그 읽기</h5>
	<form action="./ex8action.jsp" method="post">
		<table class="table table-bordered" style="width: 400px">
			<tr>
				<th class="table-info" width="100">이름</th>
				<td>
					<input type="text" name="name" class="form-control" required autofocus>
				</td>
			</tr>
			<tr> 
				<th class="table-info" width="100">비밀번호</th>
				<td>
					<input type="password" name="pass" class="form-control" required>
				</td>
			</tr>
			<tr>
				<th class="table-info" width="100">성별</th>
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
				<th class="table-info" width="100">운전면허</th>
				<td>
					<input type="chechbox" name="lic">운전면허
				</td>
			</tr>
			<tr> 
				<th class="table-info" width="100">혈액형</th>
				<td>
					<select type="blood" class="form-select">
					<!-- value와 label이 같을경우 value 생략 -->
						<option value="A">A</option>
						<option value="B">B</option>
						<option value="O">O</option>
						<option value="AB">AB</option>
					</select>
				</td>
			</tr>
			<tr> 
				<th class="table-info" width="100">IT언어</th>
				<td>
					<select name="itlang" class="form-select" multiple="multiple" size="4">
						<option value="java">java</option>
						<option value="spring">spring</option>
						<option value="javascript">javascript</option>
						<option value="pytion">pytion</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="image" src="../img/mycar11.png" style="width: 150px">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>