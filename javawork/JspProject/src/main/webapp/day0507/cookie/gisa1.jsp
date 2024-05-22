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
			지난달 29일 MBC ‘생방송 오늘 아침’에는 평생 국밥 공짜인 고등학교 1학년 양은서양과 식당 사장 하창실씨의 근황이 알려졌다.

			앞서 지난 2월 경남 하동군 하동읍의 한 골목길에서 자전거를 타고 지나가던 하씨는 현금 122만 원을 떨어트렸다. 
			이때 길을 지나던 은서양은 길가에 떨어져 있는 현금을 발견하고 이를 경찰에 가져다줬다. 
			경찰은 폐쇄회로(CC)TV를 통해 하씨의 동선을 추적해 은서양이 습득한 현금을 하씨에게 돌려줬다.

			이후 하씨가 자신이 운영하는 국밥 가게로 은서양을 초대하는 모습이 MBC ‘생방송 오늘 아침’에 담겼다. 
			하씨는 은서양을 반갑게 맞이하며 “내가 국밥 한 그릇 줄게. 국밥 먹고 가”라고 은서양을 맞이했다.
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