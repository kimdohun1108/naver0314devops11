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
<%
	//amho라는 쿠기가 있으면 true, 없으면 false
	boolean findAmho = false;
	//쿠기는 배열 타입
	Cookie cookies[] = request.getCookies();
	if(cookies!=null)
	{
		for(Cookie ck:cookies)
		{
			String name = ck.getName();
			if(name.equals("amho"))
			{
				findAmho = true;
				break;
			}
		}
	}
%>
<body>
	<%
		if(findAmho)
		{%>
			<pre>
			6일 업계에 따르면 서울시내 유명 냉면 전문점들은 가격 인상에 나서고 있다.
			‘을지면옥’은 최근 평양냉면 가격을 1만3000원에서 1만5000원으로 2000원 올렸다. 
			수육도 3만원에서 3만5000원으로, 편육은 2만8000원에서 3만원으로 각각 인상했다. 
			‘을밀대’도 냉면 가격을 올해 초 1만5000원에서 1만6000원으로 상향 조정했다. 
			‘필동면옥’과 ‘봉피양’ 등도 매년 가격을 올리고 있다.
			
			</pre>
		<%}
		else
		{%>
			<script type="text/javascript">
				alert("먼저 암호를 입력해주세요");
				history.back();
			</script>
		<%}
	%>
</body>
</html>