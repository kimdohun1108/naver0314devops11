<%@page import="data.dto.GameDto"%>
<%@page import="data.dao.GameDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    body {
        font-family: Arial, sans-serif;
        background-color: gray;
    }
   	#a{
   		position: absolute;
   		width: 350px;
   		left: 100px;
   		top: 70px;
   	}
   	#b{
   		position: absolute;
   		width: 350px;
   		top: 70px;
   		left: 940px;
   	}

</style>
</head>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	
	GameDao dao = new GameDao();
	GameDto dto = dao.getDate(num);
	
%>
<body>

	<div align="center">
		<img src="../img/a.png" id="a">
		<img src="../img/ro.jpg" style="width: 350px; height: 400px; margin: 50px;"> 
		<img src="../img/b.jpg" id="b">
	</div>
	
	<div align="center">
		<button type="button" class="btn btn-success" onclick="startGame()" style="margin: 10px;" id="asd">게임시작</button>
	</div>
	
	<div class="result" id="result" align="center"></div>
	<div>
		<div class=""></div>
		<div class="choices" align="center">
		    <button id="q" onclick="playGame('가위')">
		        <img src="../img/scissors.png" style="width: 100px; height: 100px;">
		    </button>
		    <button id="w" onclick="playGame('바위')">
		        <img src="../img/rock.png" style="width: 100px; height: 100px;">
		    </button>
		    <button id="e" onclick="playGame('보')">
		        <img src="../img/paper.png" style="width: 100px; height: 100px;">
		    </button>
		</div>
		
	</div>
	<script>
		let count = 0;
		document.getElementById("q").disabled = true;
	    document.getElementById("w").disabled = true;
	    document.getElementById("e").disabled = true;
	    
		function startGame() {
			document.getElementById("result").innerText = "가위바위보 선택하세요!";
			document.getElementById("q").disabled = false;
		    document.getElementById("w").disabled = false;
		    document.getElementById("e").disabled = false;
		}
		
		function playGame(userChoice) {
			var choices = ["가위", "바위", "보"];
		    var computerChoice = choices[Math.floor(Math.random() * 3)];
		    var result;

		    if (userChoice === computerChoice) 
		    {
		        result = "무승부!";
		        //버튼 활성화
		        document.getElementById("asd").disabled = false;
		        document.getElementById("q").disabled = true;
		        document.getElementById("w").disabled = true;
		        document.getElementById("e").disabled = true;
		    } 
		    else if (
		        (userChoice === "가위" && computerChoice === "보") ||
		        (userChoice === "바위" && computerChoice === "가위") ||
		        (userChoice === "보" && computerChoice === "바위")
		    ) 
		    {
		    	count++;
		        result = "<%=dto.getName()%> 승리!";
		        //버튼 활성화
		        document.getElementById("asd").disabled = false;
		        document.getElementById("q").disabled = true;
		        document.getElementById("w").disabled = true;
		        document.getElementById("e").disabled = true;

		    } 
		    else
		    {
		        result = "컴퓨터의 승리!";
		        document.getElementById("asd").disabled = true;
		    }

		    document.getElementById("result").innerText = "<%=dto.getName()%>: " + userChoice + " vs 컴퓨터: " + computerChoice + ". " + result;
		    
		    document.getElementById("count").value = count;
		}
	</script>
	<div align="center">
		<button type="submit" class="btn btn-danger" onclick="location.href='gamelist.jsp'" style="margin: 10px;">돌아가기</button>
	</div>

</body>
</html>
