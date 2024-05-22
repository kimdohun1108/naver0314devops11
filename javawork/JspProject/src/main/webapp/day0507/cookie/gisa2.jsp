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
			7일 법조계에 따르면 청주지법 형사6단독 조현선 부장판사는 전날 아동복지법 위반(아동학대) 혐의로 재판에 넘겨진 A(34)씨에게 징역 1년에 집행유예 2년을 선고했다.

			A씨는 2021년 1월부터 2월까지 청주시 흥덕구 한 주택에서 의붓딸 B(8)양을 상습적으로 학대한 혐의로 재판에 넘겨졌다.

			A씨는 청소를 제대로 하지 못했다는 이유 등으로 B양을 옷걸이와 손으로 때리고, 발로 차는 등 신체적으로 학대한 것으로 조사됐다.

			또 겨울에 찬물로 목욕을 시키고, 소금을 넣은 밥을 강제적으로 먹이고 B양이 이를 토한 뒤 물을 먹겠다고 하면 수돗물을 억지로 마시게 하고, 
			바닥에서 잠을 자던 B양이 침대 위로 올라가려고 하면 배를 발로 차는 등 각종 학대를 한 것으로 드러났다.
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