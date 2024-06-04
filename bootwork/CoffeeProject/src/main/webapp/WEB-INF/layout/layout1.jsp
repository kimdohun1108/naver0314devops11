<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
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
       body *{
           font-family: 'Jua';
       }
       
       div.mainlayout>div.header{
           border: 1px solid gray; 
       	   width: 100%;
       	   height: 200px;
       	   line-height: 100px;
       	   font-size: 35px;
       	   text-align: center;
       }
       
       div.mainlayout>div.main{
           border: 1px solid gray; 
       	   width: 100%;
       }
   </style>
</head>
<body>
	<div class="mainlayout">
		<div class="header">
			<tiles:insertAttribute name="header"></tiles:insertAttribute>
		</div>
		<div class="main">
			<tiles:insertAttribute name="main"></tiles:insertAttribute>
		</div>
	</div>
</body>
</html>